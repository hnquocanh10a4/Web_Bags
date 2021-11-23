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
		pagedListHolder.setPageSize(9);
		model.addAttribute("pagedListHolder", pagedListHolder);
//		model.addAttribute("products", products);
		return "products/products";
	}
	
	@RequestMapping(value="index", params = "btnOld")
	public String showOldProducts(HttpServletRequest request, ModelMap model){
		List<ProductEntity> products = this.getOldProducts();
		PagedListHolder pagedListHolder = new PagedListHolder(products);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(9);
		model.addAttribute("pagedListHolder", pagedListHolder);
//		model.addAttribute("products", products);
		return "products/products";
	}
	
	@RequestMapping(value="index", params = "btnLowPrice")
	public String showLowPrice(HttpServletRequest request, ModelMap model){
		List<ProductEntity> products = this.getLowPrice();
		PagedListHolder pagedListHolder = new PagedListHolder(products);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(9);
		model.addAttribute("pagedListHolder", pagedListHolder);
//		model.addAttribute("products", products);
		return "products/products";
	}
	
	@RequestMapping(value="index", params = "btnHightPrice")
	public String showHightPrice(HttpServletRequest request, ModelMap model){
		List<ProductEntity> products = this.getHightPrice();
		PagedListHolder pagedListHolder = new PagedListHolder(products);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(9);
		model.addAttribute("pagedListHolder", pagedListHolder);
//		model.addAttribute("products", products);
		return "products/products";
	}
	
	@RequestMapping(value="index", params = "btnsearch")
	public String searchPro(HttpServletRequest request, ModelMap model) {
		PagedListHolder pagedListHolder = new PagedListHolder(this.searchProduct(request.getParameter("searchInput")));
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(9);
		model.addAttribute("pagedListHolder", pagedListHolder);
		
		 return "products/products";
	}
	
	public List<ProductEntity> getProducts(){
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity";
		Query query = session.createQuery(hql);
		List<ProductEntity> list = query.list();
		return list;
	}
	
	public List<ProductEntity> searchProduct(String product_name) {
		Session session = factory.getCurrentSession();
		//String hql = "FROM ProductsEntity where product_name LIKE '"+ product_name + "%'";
		String hql = "FROM ProductEntity where title LIKE :title";
		Query query = session.createQuery(hql);
		query.setParameter("title", "%" +  product_name + "%");
		List<ProductEntity> list = query.list();
		return list;
	}
	
	public List<ProductEntity> getOldProducts() {
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity as pr order by pr.id_product desc";
		Query query = session.createQuery(hql);
		List<ProductEntity> list = query.list();
		return list;
	}
	
	public List<ProductEntity> getLowPrice() {
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity as pr order by pr.price asc";
		Query query = session.createQuery(hql);
		List<ProductEntity> list = query.list();
		return list;
	}
	
	public List<ProductEntity> getHightPrice() {
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductEntity as pr order by pr.price desc";
		Query query = session.createQuery(hql);
		List<ProductEntity> list = query.list();
		return list;
	}
	
	
	
}
