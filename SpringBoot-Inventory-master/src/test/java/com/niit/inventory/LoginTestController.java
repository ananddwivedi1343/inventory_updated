package com.niit.inventory;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

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

import com.niit.inventory.controller.LoginController;
import com.niit.inventory.model.Customer;

import com.niit.inventory.services.LoginService;

@RunWith(SpringRunner.class)
@SpringBootTest(classes= {LoginController.class})
public class LoginTestController {

	
	@InjectMocks
	LoginController loginController;
	
	@Mock
	private LoginService lservice;
	
	@Spy
	Model model;
	
	@Before
	public void init()
	{
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void loginCustomerTest()
	{
		
		String email="satyam1@gmail.com";
		Customer d=new Customer();
		d.setEmail("satyam1@gmail.com");
		d.setPassword("12345");
		when(lservice.findByEmail(email)).thenReturn(d);

		Customer x= lservice.findByEmail("satyam1@gmail.com");

		assertEquals(x.getEmail(),"satyam1@gmail.com" );
		assertEquals(x.getPassword(),"MTIzNDU=");

		//assertEquals(loginController.loginDealer(req,d,model1),"products");
		verify(lservice,times(1)).findByEmail("satyam1@gmail.com");
}
	
	
	
}
