package com.demo.entities;
// Generated Nov 23, 2021, 9:30:28 AM by Hibernate Tools 5.1.10.Final

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
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * Stores generated by hbm2java
 */
@Entity
@Table(name = "stores", catalog = "ecommerce_db", uniqueConstraints = @UniqueConstraint(columnNames = "name"))
public class Stores implements java.io.Serializable {

	private Integer id;
	private Users users;
	private String name;
	private String phone;
	private String email;
	private String address;
	private String logo;
	
	@JsonFormat(pattern = "dd/MM/yyyy")
	private Date created;
	
	@JsonFormat(pattern = "dd/MM/yyyy")
	private Date expiry;
	
	@JsonFormat(pattern = "dd/MM/yyyy")
	private Date updated;
	private boolean status;
	
	@JsonFormat(pattern = "dd/MM/yyyy")
	private Date banTerm;
	private Set<ChatChanels> chatChanelses = new HashSet<ChatChanels>(0);
	private Set<Products> productses = new HashSet<Products>(0);
	private Set<StoreServices> storeServiceses = new HashSet<StoreServices>(0);
	private Set<Notifications> notificationses = new HashSet<Notifications>(0);
	private Set<ChatMessages> chatMessageses = new HashSet<ChatMessages>(0);
	private Set<Transactions> transactionses = new HashSet<Transactions>(0);

	public Stores() {
	}

	public Stores(Users users, String name, String phone, String email, String address, String logo, Date created,
			boolean status) {
		this.users = users;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.logo = logo;
		this.created = created;
		this.status = status;
	}

	public Stores(Users users, String name, String phone, String email, String address, String logo, Date created,
			Date expiry, Date updated, boolean status, Date banTerm, Set<ChatChanels> chatChanelses, Set<Products> productses,
			Set<StoreServices> storeServiceses, Set<Notifications> notificationses, Set<ChatMessages> chatMessageses,
			Set<Transactions> transactionses) {
			
		this.users = users;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.logo = logo;
		this.created = created;
		this.expiry = expiry;
		this.updated = updated;
		this.status = status;
		this.banTerm = banTerm;
		this.chatChanelses = chatChanelses;
		this.productses = productses;
		this.storeServiceses = storeServiceses;
		this.notificationses = notificationses;
		this.chatMessageses = chatMessageses;
		this.transactionses = transactionses;
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

	@Column(name = "name", unique = true, nullable = false, length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "phone", nullable = false, length = 20)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "email", nullable = false, length = 100)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "address", nullable = false, length = 500)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "logo", nullable = false, length = 200)
	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "expiry", length = 10)
	public Date getExpiry() {
		return this.expiry;
	}

	public void setExpiry(Date expiry) {
		this.expiry = expiry;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "updated", length = 10)
	public Date getUpdated() {
		return this.updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "ban_term", length = 10)
	public Date getBanTerm() {
		return this.banTerm;
	}

	public void setBanTerm(Date banTerm) {
		this.banTerm = banTerm;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stores")
	public Set<ChatChanels> getChatChanelses() {
		return this.chatChanelses;
	}

	public void setChatChanelses(Set<ChatChanels> chatChanelses) {
		this.chatChanelses = chatChanelses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stores")
	public Set<Products> getProductses() {
		return this.productses;
	}

	public void setProductses(Set<Products> productses) {
		this.productses = productses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stores")
	public Set<StoreServices> getStoreServiceses() {
		return this.storeServiceses;
	}

	public void setStoreServiceses(Set<StoreServices> storeServiceses) {
		this.storeServiceses = storeServiceses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stores")
	public Set<Notifications> getNotificationses() {
		return this.notificationses;
	}

	public void setNotificationses(Set<Notifications> notificationses) {
		this.notificationses = notificationses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stores")
	public Set<ChatMessages> getChatMessageses() {
		return this.chatMessageses;
	}

	public void setChatMessageses(Set<ChatMessages> chatMessageses) {
		this.chatMessageses = chatMessageses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stores")
	public Set<Transactions> getTransactionses() {
		return this.transactionses;
	}

	public void setTransactionses(Set<Transactions> transactionses) {
		this.transactionses = transactionses;
	}

}
