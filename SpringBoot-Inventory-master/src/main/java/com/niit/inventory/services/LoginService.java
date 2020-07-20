package com.niit.inventory.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.niit.inventory.model.Customer;
import com.niit.inventory.repository.CustomerRepository;

public class LoginService {

	@Autowired
	private CustomerRepository repo;

	public void saveCustomer(Customer customer) {
		repo.save(customer);
	}

	public Customer findByEmail(String email) {
		return repo.findByEmail(email);
	}
}
