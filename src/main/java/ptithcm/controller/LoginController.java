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

import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.CustomerEntity;


@Transactional
@Controller
public class LoginController {

	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model, @ModelAttribute("register") CustomerEntity user ) {
		return "login/login1";
	}

	
	public List<CustomerEntity> getUser() {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity";
		Query query = session.createQuery(hql);
		List<CustomerEntity> list = query.list();
		return list;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST, params = "btnLogin")
	public String login(ModelMap model, @Validated @ModelAttribute("register")  CustomerEntity user,
			BindingResult errors, @RequestParam("username") String username,
			@RequestParam("password") String password, HttpSession session, @RequestParam("capcha") String veriCapcha, HttpServletRequest request) {
		String capcha1 = session.getAttribute("captcha_security").toString();
		List<CustomerEntity> users = this.getUser();		
		
		boolean verify = false;
		if(capcha1.equals(veriCapcha)) {
			verify = true;
		}else {
			verify = false;
		}
		
		if(!verify) {
			model.addAttribute("reCapcha", "Vui lòng nhập đúng Capcha");
			return "login/login1";
		}else {
			for (CustomerEntity userLogin : users) {
				if (userLogin.getUsername().equals(username) && userLogin.getPassword().equals(password)) {
					model.addAttribute("mess", "Đăng nhập thành công");
					HttpSession session1 = request.getSession();
					session.setAttribute("username", username);
					return "index";
				}
			}
		}
		
			model.addAttribute("mess", "Tên đăng nhập hoặc mật khẩu không chính xác ! ");
			return "login/login1";

		
	}

}
