package ptithcm.controller;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
<<<<<<< HEAD
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
=======
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

>>>>>>> 8e71196520adbcf7b9d6a030ef065986d83b2d0e

import ptithcm.entity.CustomerEntity;

@Transactional
@Controller
public class LoginController {
<<<<<<< HEAD
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String index(@ModelAttribute("customer") CustomerEntity customer) {
		
		return "login/login";
	}
	
	@RequestMapping(value="index", method=RequestMethod.POST, params="btnLogin")
	public String login(ModelMap model,
		@Validated	@ModelAttribute("customer") CustomerEntity customer, BindingResult errors
		) {
		
		if(errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau đây");
		}else{
			model.addAttribute("message", "Chúc mừng bạn đã đăng nhập thành công");
=======
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model, @ModelAttribute("register") CustomerEntity user) {
		return "login/login";
	}
	@RequestMapping(value = "login", method = RequestMethod.POST, params = "register")
	public String insert(ModelMap model, @ModelAttribute("register") CustomerEntity user) {
		user.setId_role(1);
//		user.setSex(true);
		System.out.println("aaa" + user.getSex());
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
>>>>>>> 8e71196520adbcf7b9d6a030ef065986d83b2d0e
		}
		return "login/login";
	}
	
}
