package com.niit.inventory.model;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name = "order1")
public class Order1 {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	private long order_id;

	@Column(name = "type")
	private String type;

	@Column(name = "quantity")
	private float quantity;

	@Column(name = "price")
	private String price;

	@Column(name = "date")
	@Temporal(TemporalType.DATE)
	private Date date;

	@ManyToOne()
	private Customer customer;

	@ManyToOne()
	private Product product;

	@OneToOne(mappedBy = "order1", cascade = CascadeType.ALL)
	private Invoice invoice;

	public Order1() {
		super();
	}

	public long getOrder_id() {
		return order_id;
	}

	public void setOrder_id(long order_id) {
		this.order_id = order_id;
	}

	public Invoice getInvoice() {
		return invoice;
	}

	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public float getQuantity() {
		return quantity;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
