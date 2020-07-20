package com.niit.inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.inventory.model.Order1;

public interface OrderRepository extends JpaRepository<Order1, Long> {

}
