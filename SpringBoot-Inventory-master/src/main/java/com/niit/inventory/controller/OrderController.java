package com.niit.inventory.controller;

import java.util.Date;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.inventory.model.Customer;
import com.niit.inventory.model.Order1;
import com.niit.inventory.model.Product;
import com.niit.inventory.services.CustomerService;
import com.niit.inventory.services.OrderService;
import com.niit.inventory.services.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService service;
	@Autowired
	private ProductService productService;
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/new_order")
	public String viewOrderPage(Model model)
	{
		List<Order1> listOrders=service.listAll();
		model.addAttribute("listOrders",listOrders);
		return "new_order";
	}
	
	@RequestMapping("/view_order")
	public String viewOrderToAdmin(Model model)
	{
		List<Order1> listOrder=service.listAll();
		model.addAttribute("listOrder",listOrder);
		return "view_order";
	}
	
	@RequestMapping("/showorder")
	public ModelAndView showEditOrderPage(@RequestParam("id") int id) {
	ModelAndView mav = new ModelAndView("add_order");
	Product product = productService.get(id);
	mav.addObject("product", product);
	return mav;
	}
	
	@RequestMapping("/orderForm")
	public String showNewOrderPage(Model model) {
	Order1 order1 = new Order1();
	model.addAttribute("order1", order1);
    return "new_order";
	}
	
	@RequestMapping(value = "/saveOrder", method = RequestMethod.POST)
	public String saveOrder(HttpServletRequest request,@ModelAttribute("product") Product product) {
		ModelAndView model=null;
		
		String customerId=request.getParameter("cust_id");
		Customer activeUser=(Customer)request.getSession().getAttribute("user");
		Customer customer=customerService.get(activeUser.getCust_id());
		Order1 order1=new Order1();  
		order1.setCustomer(customer);
		order1.setProduct(product);
		order1.setDate(new Date());
		Float quantity=Float.parseFloat(request.getParameter("quantity"));
		order1.setQuantity(quantity);
		order1.setPrice(quantity*product.getPrice()+"");
		service.save(order1);
		return "redirect:/view_customer_product";
	}

    @RequestMapping("/deleteOrder")
	public String deleteOrder(@RequestParam("order_id") int order_id) {
	service.delete(order_id);
	return "redirect:/view-invoice";
	}
}
