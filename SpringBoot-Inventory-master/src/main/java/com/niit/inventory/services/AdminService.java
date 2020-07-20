package com.niit.inventory.services;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.inventory.model.Admin;
import com.niit.inventory.repository.AdminRepository;

@Service
@Transactional
public class AdminService {

	@Autowired
	private AdminRepository repo;

	public void save(Admin admin) {
		repo.save(admin);
	}

}
