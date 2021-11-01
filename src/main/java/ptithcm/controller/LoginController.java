package ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.CustomerEntity;

@Controller
public class LoginController {
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
		}
		return "login/login";
	}
}
