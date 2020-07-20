package com.niit.inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.inventory.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

}
