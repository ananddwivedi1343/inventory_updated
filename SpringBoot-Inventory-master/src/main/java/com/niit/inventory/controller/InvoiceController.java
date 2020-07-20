package com.niit.inventory.controller;

import java.util.Date;

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
import com.niit.inventory.model.Invoice;
import com.niit.inventory.model.Order1;
import com.niit.inventory.services.CustomerService;
import com.niit.inventory.services.InvoiceService;
import com.niit.inventory.services.OrderService;
import com.niit.inventory.services.ProductService;

@Controller
public class InvoiceController {
	
	@Autowired
	private InvoiceService service;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CustomerService customerService;

	@Autowired
	private ProductService productService;
	
	
	@RequestMapping("/view-invoice")
	public String viewInvoiceToAdmin(Model model)
	{
		List<Invoice> listInvoice=service.listAll();
		model.addAttribute("listInvoice",listInvoice);
		return "view-invoice";
	}
	
	//view invoice to customer
	
	@GetMapping("/showInvoiceForm")
	public ModelAndView showInvoiceForm1(HttpServletRequest request) {
		ModelAndView model=new ModelAndView("view-invoice-tocustomer");
		Customer cust=customerService.findByEmail(request.getSession().getAttribute("userId").toString());
		
		model.addObject("customer", cust);
		return model;
		
	}
	
	@RequestMapping("/showInvoice")
	public ModelAndView showInvoicePage(@RequestParam("order_id") int order_id) {
	ModelAndView mav = new ModelAndView("generate-invoice");
	Order1 order1 = orderService.get(order_id);
	mav.addObject("order1", order1);
	return mav;
	}
	
	@RequestMapping(value = "/saveInvoice", method = RequestMethod.POST)
	public String saveInvoice(HttpServletRequest request,@ModelAttribute("order1") Order1 order1) {
		ModelAndView model=null;
		
        String n=request.getParameter("name");
		String p=request.getParameter("price");
		String p1=request.getParameter("price1");
		
		Invoice invoice=new Invoice(); 
		
		invoice.setOrder1(order1);
		invoice.setDate(new Date());
		invoice.setDate(new Date());
		invoice.setName(n);
		invoice.setPrice(p);
		invoice.setPrice1(p1);
		
		service.save(invoice);

	return "redirect:/view_order";
	}

	@RequestMapping("/deleteInvoice")
	public String deleteInvoice(@RequestParam("invoiceId") int invoiceId) {
	service.delete(invoiceId);
	return "redirect:/view-invoice";
	}

}
