package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.CustomerEntity;
import ptithcm.entity.ProductEntity;

@Transactional
@Controller
@RequestMapping("admin/")
public class ManageUserAdminController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("users")
	public String showUsers( ModelMap model){
		List<CustomerEntity> users = this.getCustomers();
		model.addAttribute("users", users);
		return "manage-users-admin/manageUsers";
	}
	
	
	@RequestMapping(value="users/{id}.htm",params = "delete")
	public String delete(ModelMap model, @PathVariable("id") Integer id) {
		this.deleteUser(this.getUser(id));
		List<CustomerEntity> users = this.getCustomers();
		
		
		model.addAttribute("users", users);
		return "manage-users-admin/manageUsers";
	}
	
	public List<CustomerEntity> getCustomers(){
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity";
		Query query = session.createQuery(hql);
		List<CustomerEntity> list = query.list();
		return list;
	}
	
	public Integer deleteUser(CustomerEntity us) {
		Session session = factory.getCurrentSession();
		

		try {
			session.delete(us);
	
		} catch (Exception e) {
		
			return 0;
		} 
		return 1;
	}
	public CustomerEntity getUser(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity where id_user = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		CustomerEntity list =(CustomerEntity) query.list().get(0);
		return list;
	}
}
