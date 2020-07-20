package com.niit.inventory.controller;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.inventory.model.Customer;
import com.niit.inventory.services.CustomerService;

@Controller
public class LoginController {

	@Autowired
	private CustomerService service;
	
	@RequestMapping("/")
	public String viewHomePage(Model model)
	{
		return "index";
	}
	
	@GetMapping("/login")
	public String showLoginForm(Model theModel) {
	
		return "login";
	}
	
	@PostMapping("/loginCustomer")
	public ModelAndView loginCustomer(HttpServletRequest req,@ModelAttribute("customer") Customer customer) {
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		String pass2=encryptPass(pass);
		
		StringTokenizer st = new StringTokenizer(email, "@");
		String s2 = st.nextToken();
		
		 ModelAndView mav=null;
		 Customer d = service.findByEmail(email);  //fetching record
		 
		 if(email.equals("admin@1343") && (pass.equals("1343")))
		 {
			 mav=new ModelAndView("welcome-admin-home");
			 
			 return mav;
		 }
		 
		 if(d==null) {
			 mav= new ModelAndView("login");
				mav.addObject("error", "User Doesn't Exists");
		 }
		 
		 else  if(email.equals(d.getEmail()) && pass.equals(d.getPassword()))
		 {
					 
		 req.getSession().setAttribute("user", d);
		 req.getSession().setAttribute("userId", d.getEmail());
		 
		  mav = new ModelAndView("welcome-customer-home");
		 mav.addObject("welcome-customer-home", d.getName());
		 
		 List<Customer> listCustomers = service.listAll();
		    mav.addObject("listcustomers", listCustomers);
	     		    
		 } 
		 
		 else
		 {mav= new ModelAndView("login");
			mav.addObject("error", "Invalid Username or Password");
		 }
		 
		 return mav;
	}
	
	private String encryptPass(String pass) {
		Base64.Encoder encoder = Base64.getEncoder();
		String normalString = pass;
		String encodedString = encoder.encodeToString(
	    normalString.getBytes(StandardCharsets.UTF_8) );
		return encodedString;
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
	req.getSession().invalidate();
	return "index";
	}
}
