package com.niit.inventory.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.inventory.model.Customer;
import com.niit.inventory.services.CustomerService;


@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService service;
	
		@RequestMapping("/login")
	public String viewHomePage(Model model)
	{
		List<Customer> listCustomers=service.listAll();
		model.addAttribute("listCustomers",listCustomers);
		return "login";
	}
	
	@RequestMapping("/view-customer")
	public String viewCustomer(Model model)
	{
		List<Customer> listCustomers=service.listAll();
		model.addAttribute("listCustomers",listCustomers);
		return "view-customer";
	}
	
	@RequestMapping("/showFormcust")
	public String showNewCustomer(Model model) {
	Customer customer = new Customer();
	model.addAttribute("customer", customer);
    return "customer";
	}
	
	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
	service.save(customer);
    return "redirect:login";
	}
	
	@RequestMapping(value = "/saveCustomers", method = RequestMethod.POST)
	public String saveCustomer1(@ModelAttribute("customer") Customer customer) {
	service.save(customer);
    return "redirect:view-customer";
	}
	
	@RequestMapping("/editCustomer")
	public ModelAndView showEditCustomerPage(@RequestParam("cust_id") int cust_id) {
	ModelAndView mav = new ModelAndView("edit-customer");
	Customer customer = service.get(cust_id);
	mav.addObject("customer", customer);
    return mav;
	}
	
	@GetMapping("/showProfileForm")
	public ModelAndView showProfileForm(HttpServletRequest request) {
		ModelAndView model=new ModelAndView("customer-profile");
		Customer cust=service.findByEmail(request.getSession().getAttribute("userId").toString());
		model.addObject("customer", cust);
		System.out.println("name: "+cust.getName());
		return model;
	}
	
    @RequestMapping(value = "/saveprofile", method = RequestMethod.POST)
	public ModelAndView CustomerProfile(HttpServletRequest request,@ModelAttribute("customer") Customer customer) {
		ModelAndView model=null;
		
		Customer customerId=service.findById(customer.getCust_id());
		Customer activeUser=(Customer)request.getSession().getAttribute("user");
		Customer customer1=service.get(activeUser.getCust_id());
		
		String n=request.getParameter("name");
		String p=request.getParameter("password");
		String e=request.getParameter("email");
		String phn=request.getParameter("phone");
		String adrs=request.getParameter("address");
	
		customer.setName(n);
		System.out.println("password: " +p);
		customer.setPassword(p);
		customer.setEmail(e);
		customer.setPhone(phn);
		customer.setAddress(adrs);
	
	    service.save(customer);
		model=new ModelAndView("welcome-customer-home");
	    return model;
	}
	
	@RequestMapping("/deleteCustomer")
	public String deleteProduct(@RequestParam("cust_id") int cust_id) {
	service.delete(cust_id);
	return "redirect:view-customer";
	}
}
