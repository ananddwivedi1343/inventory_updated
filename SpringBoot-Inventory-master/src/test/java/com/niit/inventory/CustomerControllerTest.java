package com.niit.inventory;

import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.ui.Model;


import com.niit.inventory.controller.CustomerController;
import com.niit.inventory.controller.LoginController;

import com.niit.inventory.model.Customer;
import com.niit.inventory.services.CustomerService;
import com.niit.inventory.services.LoginService;



@RunWith(SpringRunner.class)
@SpringBootTest(classes= {CustomerController.class})
public class CustomerControllerTest {
	
	

	@InjectMocks
	CustomerController customerController;
	
	@Mock
	private CustomerService lservice;
	
	@Spy
	Model model;
	
	@Before
	public void init()
	{
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void showNewCustomerTest()
	{
		Assert.assertEquals(customerController.showNewCustomer(model),"/customer");
	}
	
	@Test
	public void createCustomerTest()
	{
		Customer d1=new Customer();
		//d1.setCust_id();	
		d1.setName("shivangi shukla");
		d1.setPassword("123");
		d1.setEmail("raj2test@gmail.com");
		//d1.setDob(java.sql.Date.valueOf("1985-09-04"));
		d1. setPhone("999999999");
		d1.setAddress("Lucknow");
		
		
		lservice.save(d1);
		verify(lservice,times(1)).save(d1);
		
	}

}
