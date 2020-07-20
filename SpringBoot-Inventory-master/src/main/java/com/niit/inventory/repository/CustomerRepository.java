package com.niit.inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.inventory.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

	public Customer findByEmail(String email);
}
