package ptithcm.controller;

import java.util.List;

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

import ptithcm.entity.ContactEntity;
import ptithcm.entity.ProductEntity;
import ptithcm.entity.ShopEntity;

@Transactional
@Controller

public class ContactController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "contact", method = RequestMethod.GET)
	
	public String showContact(ModelMap model, @ModelAttribute("contact") ContactEntity contact){
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
		return "contact/contact";
	}
}
