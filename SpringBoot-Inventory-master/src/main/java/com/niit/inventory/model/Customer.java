package com.niit.inventory.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Customer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cust_id;
	private String name;
	private String password;
	private String email;
	private String phone;
	private String address;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name = "customer_cust_id")
	private List<Order1> order;
	
	public Customer() {
		
	}
    public List<Order1> getOrder() {
		return order;
	}
    public void setOrder(List<Order1> order) {
		this.order = order;
	}
    public int getCust_id() {
		return cust_id;
	}
    public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
    public String getName() {
		return name;
	}
    public void setName(String name) {
		this.name = name;
	}
    public String getPassword() {
		return password;
	}
    public void setPassword(String password) {
		 this.password = password;
	}

	@Column(unique = true)
	public String getEmail() {
		return email;
	}
    public void setEmail(String email) {
		this.email = email;
	}
    public String getPhone() {
		return phone;
	}
    public void setPhone(String phone) {
		this.phone = phone;
	}
    public String getAddress() {
		return address;
	}
    public void setAddress(String address) {
		this.address = address;
	}
}
