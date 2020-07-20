package com.niit.inventory.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.inventory.model.Order1;

import com.niit.inventory.repository.OrderRepository;

@Service
@Transactional
public class OrderService {

	@Autowired
	private OrderRepository repo;

	public List<Order1> listAll() {
		return repo.findAll();
	}

	public void save(Order1 order1) {
		repo.save(order1);
	}

	public Order1 get(long order_id) {
		return repo.findById(order_id).get();
	}

	public void delete(long order_id) {
		repo.deleteById(order_id);
	}

}
