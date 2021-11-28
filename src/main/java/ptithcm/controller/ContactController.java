package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.CartEntity;
import ptithcm.entity.ContactEntity;

import ptithcm.entity.ShopEntity;

@Transactional
@Controller

public class ContactController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "contact", method = RequestMethod.GET)
	
	public String showContact(ModelMap model,HttpServletRequest request, @ModelAttribute("contact") ContactEntity contact){
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
		
		List<ShopEntity> shop = this.getContact();
		model.addAttribute("shop", shop);
		return "contact/contact";
	}
	
	
	public List<ShopEntity> getContact(){
		Session session = factory.getCurrentSession();
		String hql = "FROM ShopEntity";
		Query query = session.createQuery(hql);
		List<ShopEntity> list = query.list();
		return list;
	}
	@RequestMapping(value = "contact", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("contact") ContactEntity contact) {
		System.out.println(contact.getName());
		System.out.println(contact.getEmail());
		System.out.println(contact.getTopic());
		System.out.println(contact.getContent());
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(contact);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm mới thất bại !");
		} finally {
			session.close();
		}
		List<ShopEntity> shop = this.getContact();
		model.addAttribute("shop", shop);
		return "redirect:/contact.htm";
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
