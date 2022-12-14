package com.demo.entities;
// Generated Nov 23, 2021, 8:37:11 AM by Hibernate Tools 5.1.10.Final

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * StoreServices generated by hbm2java
 */
@Entity
@Table(name = "store_services", catalog = "ecommerce_db")
public class StoreServices implements java.io.Serializable {

	private StoreServicesId id;
	private Services services;
	private Stores stores;

	public StoreServices() {
	}

	public StoreServices(StoreServicesId id, Services services, Stores stores) {
		this.id = id;
		this.services = services;
		this.stores = stores;
	}

	@EmbeddedId

	@AttributeOverrides({ @AttributeOverride(name = "storeId", column = @Column(name = "store_id", nullable = false)),
			@AttributeOverride(name = "serviceId", column = @Column(name = "service_id", nullable = false)),
			@AttributeOverride(name = "created", column = @Column(name = "created", nullable = false, length = 10)),
			@AttributeOverride(name = "duration", column = @Column(name = "duration", nullable = false)),
			@AttributeOverride(name = "price", column = @Column(name = "price", nullable = false, precision = 22, scale = 0)) })
	public StoreServicesId getId() {
		return this.id;
	}

	public void setId(StoreServicesId id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "service_id", nullable = false, insertable = false, updatable = false)
	public Services getServices() {
		return this.services;
	}

	public void setServices(Services services) {
		this.services = services;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "store_id", nullable = false, insertable = false, updatable = false)
	public Stores getStores() {
		return this.stores;
	}

	public void setStores(Stores stores) {
		this.stores = stores;
	}

}
