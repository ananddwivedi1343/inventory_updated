package com.niit.inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.inventory.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {

}
