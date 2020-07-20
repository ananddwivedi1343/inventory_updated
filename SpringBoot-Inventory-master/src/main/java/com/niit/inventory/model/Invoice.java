package com.niit.inventory.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="invoice")
public class Invoice 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private long invoiceId;

	@Column(name="product_name")
	private String name;
	
	@Column(name="quantity")
	private String quantity;
	
	@Column(name="price")
	private String price;
	
	@Column(name="totalprice")
	private String price1;
	
	@Column(name="OrderDate")
	private Date date1;
	
	@Column(name="date")
	@Temporal(TemporalType.DATE)
	private Date date;
   
    @OneToOne
    @JoinColumn(name = "order_Id")
    private Order1 order1;

    public Invoice() {
	
    }
    public String getQuantity() {
	return quantity;
    }
    public void setQuantity(String quantity) {
	this.quantity = quantity;
    }
    public Date getDate1() {
	return date1;
    }
    public void setDate1(Date date1) {
	this.date1 = date1;
    }
    public String getPrice1() {
	return price1;
    }
    public void setPrice1(String price1) {
	this.price1 = price1;
	}
    public long getInvoiceId() {
	return invoiceId;
    }
    public void setInvoiceId(long invoiceId) {
	this.invoiceId = invoiceId;
    }
    public String getName() {
	return name;
    }
    public void setName(String name) {
	this.name = name;
    }
    public String getPrice() {
	return price;
    }
    public void setPrice(String price) {
	this.price = price;
    }
    public Date getDate() {
	return date;
    }
    public void setDate(Date date) {
	this.date = date;
	}
    public Order1 getOrder1() {
	return order1;
    }
    public void setOrder1(Order1 order1) {
	this.order1 = order1;
    }
}