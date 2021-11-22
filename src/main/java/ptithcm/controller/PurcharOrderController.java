package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.BillDetailEntity;


@Transactional
@Controller
public class PurcharOrderController {
	
	@Autowired
	SessionFactory factory;
	@RequestMapping("purchase")
	public String index(ModelMap model) {
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
}
