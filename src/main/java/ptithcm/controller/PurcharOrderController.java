package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.BillDetailEntity;
import ptithcm.entity.CartEntity;


@Transactional
@Controller
public class PurcharOrderController {
	
	@Autowired
	SessionFactory factory;
	@RequestMapping("purchase")
	public String index(ModelMap model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		String currentUser = (String) session.getAttribute("username");
		if(currentUser == null )
		{
			model.addAttribute("loginStatus", "nav-login-no-login");
			
		}
		else
		{
			model.addAttribute("loginStatus", "");
			model.addAttribute("currentUser", currentUser);
			int id = this.getIDUser(currentUser);
			List<CartEntity> getCart = this.getCart(id);
			model.addAttribute("getCart", getCart);
		}
		
		List<BillDetailEntity> purchase = this.getProductinBillDetail();
		model.addAttribute("purchase", purchase);
		return "bill/purchase-order";
	}
	
	
	public List<BillDetailEntity> getProductinBillDetail(){
		Session session = factory.getCurrentSession();
		String hql = "FROM BillDetailEntity";
		Query query = session.createQuery(hql);
		List<BillDetailEntity> list = query.list();
		return list;
	}
	
	public Integer getIDUser(String username) {
		Session session = factory.getCurrentSession();
		String hql = "SELECT id_user FROM CustomerEntity where username = :username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);
		Integer id = (Integer) query.list().get(0);
		return id;
	}
	public List<CartEntity> getCart(Integer id){
		Session session = factory.getCurrentSession();
		String hql = "FROM CartEntity where ID_USER = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		List<CartEntity> list = query.list();
		return list;
	}
	
}
