package ptithcm.controller;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.CustomerEntity;

@Transactional
@Controller
public class LoginController {
	
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model, @ModelAttribute("register") CustomerEntity user) {
		return "login/login";
	}
	@RequestMapping(value = "login", method = RequestMethod.POST, params = "register")
	public String insert(ModelMap model, @ModelAttribute("register") CustomerEntity user) {
		user.setId_role(1);

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(user);
			t.commit();
			model.addAttribute("message", "Đăng kí thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Đăng kí thất bại !");
		} finally {
			session.close();

		}
		return "login/login";
	}
	

	@RequestMapping(value="login", method=RequestMethod.POST, params="btnLogin")
	public String login(ModelMap model,
		@Validated	@ModelAttribute("register") CustomerEntity user, BindingResult errors) {
		
		if(errors.hasErrors()) {
			model.addAttribute("mess", "Đăng nhập thất bại ");
		}else{
			model.addAttribute("mess", "Đăng nhập thành công");
		}
		return "login/login";
	}
	
}
