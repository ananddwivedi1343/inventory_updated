package com.niit.inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.inventory.model.Invoice;

public interface InvoiceRepository extends JpaRepository<Invoice, Long> {

}
