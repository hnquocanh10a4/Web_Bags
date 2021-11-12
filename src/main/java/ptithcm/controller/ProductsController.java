package ptithcm.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.ProductEntity;

@Transactional
@Controller
@RequestMapping("products/")
public class ProductsController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("index")
	public String showProducts(HttpServletRequest request, ModelMap model){
		List<ProductEntity> products = this.getProducts();
		PagedListHolder pagedListHolder = new PagedListHolder(products);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		;
		pagedListHolder.setPageSize(9);
		model.addAttribute("pagedListHolder", pagedListHolder);
//		model.addAttribute("products", products);
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
