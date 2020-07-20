package com.niit.inventory.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.inventory.model.Customer;

import com.niit.inventory.repository.CustomerRepository;

@Service
@Transactional
public class CustomerService {

	@Autowired
	private CustomerRepository repo;

	public void save(Customer customer) {
		repo.save(customer);
	}

	public Customer findByEmail(String email) {
		return repo.findByEmail(email);
	}

	public List<Customer> listAll() {
		return repo.findAll();
	}

	public Customer get(int cust_id) {
		return repo.findById(cust_id).get();
	}

	public void delete(int cust_id) {
		repo.deleteById(cust_id);

	}

	public Customer findById(int cust_id) {
		return repo.findById(cust_id).get();
	}

}
