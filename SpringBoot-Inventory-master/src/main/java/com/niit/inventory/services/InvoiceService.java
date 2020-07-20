package com.niit.inventory.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.inventory.model.Invoice;
import com.niit.inventory.model.Order1;
import com.niit.inventory.repository.InvoiceRepository;
import com.niit.inventory.repository.OrderRepository;

@Service
@Transactional
public class InvoiceService {

	@Autowired
	private InvoiceRepository repo;

	public List<Invoice> listAll() {
		return repo.findAll();
	}

	public void save(Invoice invoice) {
		repo.save(invoice);
	}

	public Invoice get(long invoiceId) {
		return repo.findById(invoiceId).get();
	}

	public void delete(long invoiceId) {
		repo.deleteById(invoiceId);
	}

}
