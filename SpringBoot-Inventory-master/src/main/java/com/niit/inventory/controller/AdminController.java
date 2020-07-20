package com.niit.inventory.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.inventory.model.Admin;
import com.niit.inventory.services.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService service;
	
	
	
	@RequestMapping("/admin")
	public String showNewAdmin(Model model) {
	

	return "welcome-admin-home";
	}
	
	@RequestMapping(value = "/saveAdmin", method = RequestMethod.POST)
	public String saveAdmin(@ModelAttribute("admin") Admin admin) {
	service.save(admin);

	return "redirect:admin";
	}

	
}
