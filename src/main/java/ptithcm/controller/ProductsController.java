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

import ptithcm.entity.ProductEntity;

@Transactional
@Controller

public class ProductsController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("products")
	public String showProducts(ModelMap model){
		List<ProductEntity> products = this.getProducts();
		model.addAttribute("products", products);
		return "products/products";
	}
	
	public List<ProductEntity> getProducts(){
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity";
		Query query = session.createQuery(hql);
		List<ProductEntity> list = query.list();
		return list;
	}
	
}
