package ptithcm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.bean.Company;

@Controller
public class CompanyController {
	@Autowired
	Company company;
	
	@RequestMapping("about") 
	public String index(ModelMap model) {
		model.addAttribute("company", company);
		return "about/about";
	}
}
