package com.niit.inventory.model;

import java.sql.Date;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long id;

	@Column(name = "name")
	private String name;

	@Column(name = "type")
	private String type;

	@Column(name = "brand")
	private String brand;

	@Column(name = "madein")
	private String madein;

	@Column(name = "quantity")
	private float quantity;

	@Column(name = "price")
	private float price;

	@Column(name = "date")
	private Date date;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id")
	private Set<Order1> order;

	public Product() {
		super();
	}

	public Set<Order1> getOrder() {
		return order;
	}

	public void setOrder(Set<Order1> order) {
		this.order = order;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getMadein() {
		return madein;
	}

	public void setMadein(String madein) {
		this.madein = madein;
	}

	public float getQuantity() {
		return quantity;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
