package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.ProductEntity;
@Transactional
@Controller
public class SingleProductController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("singleproduct")
	public String index(ModelMap model, HttpServletRequest request) {
		String getID = request.getParameter("id");
		
		List<ProductEntity> products = this.getProducts();
		for(ProductEntity pro: products) {
			if(pro.getId_product() == Integer.parseInt(getID)) {
				model.addAttribute("pro", pro);
				break;
			}
		}
		model.addAttribute("products", products);
		return "products/single-product";
	}
	
	public List<ProductEntity> getProducts(){
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity";
		Query query = session.createQuery(hql);
		List<ProductEntity> list = query.list();
		return list;
	}
}
