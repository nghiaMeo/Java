package com.demo.entities;
// Generated Dec 4, 2021, 9:08:29 AM by Hibernate Tools 5.1.10.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * Carts generated by hbm2java
 */
@Entity
@Table(name = "carts", catalog = "ecommerce_db")
public class Carts implements java.io.Serializable {

	private Integer id;
	private Users users;
	
	@JsonFormat(pattern = "dd/MM/yyyy")
	private Date created;
	private String status;
	private Set<CartProduct> cartProducts = new HashSet<CartProduct>(0);

	public Carts() {
	}

	public Carts(Users users, Date created, String status) {
		this.users = users;
		this.created = created;
		this.status = status;
	}

	public Carts(Users users, Date created, String status, Set<CartProduct> cartProducts) {
		this.users = users;
		this.created = created;
		this.status = status;
		this.cartProducts = cartProducts;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", nullable = false)
	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "status", nullable = false, length = 50)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "carts")
	public Set<CartProduct> getCartProducts() {
		return this.cartProducts;
	}

	public void setCartProducts(Set<CartProduct> cartProducts) {
		this.cartProducts = cartProducts;
	}

}