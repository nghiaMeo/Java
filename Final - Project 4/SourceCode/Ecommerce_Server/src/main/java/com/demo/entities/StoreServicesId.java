package com.demo.entities;
// Generated Nov 23, 2021, 8:37:11 AM by Hibernate Tools 5.1.10.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * StoreServicesId generated by hbm2java
 */
@Embeddable
public class StoreServicesId implements java.io.Serializable {

	private int storeId;
	private int serviceId;
	private Date created;
	private int duration;
	private double price;

	public StoreServicesId() {
	}

	public StoreServicesId(int storeId, int serviceId, Date created, int duration, double price) {
		this.storeId = storeId;
		this.serviceId = serviceId;
		this.created = created;
		this.duration = duration;
		this.price = price;
	}

	@Column(name = "store_id", nullable = false)
	public int getStoreId() {
		return this.storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	@Column(name = "service_id", nullable = false)
	public int getServiceId() {
		return this.serviceId;
	}

	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}

	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "duration", nullable = false)
	public int getDuration() {
		return this.duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	@Column(name = "price", nullable = false, precision = 22, scale = 0)
	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof StoreServicesId))
			return false;
		StoreServicesId castOther = (StoreServicesId) other;

		return (this.getStoreId() == castOther.getStoreId()) && (this.getServiceId() == castOther.getServiceId())
				&& ((this.getCreated() == castOther.getCreated()) || (this.getCreated() != null
						&& castOther.getCreated() != null && this.getCreated().equals(castOther.getCreated())))
				&& (this.getDuration() == castOther.getDuration()) && (this.getPrice() == castOther.getPrice());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getStoreId();
		result = 37 * result + this.getServiceId();
		result = 37 * result + (getCreated() == null ? 0 : this.getCreated().hashCode());
		result = 37 * result + this.getDuration();
		result = 37 * result + (int) this.getPrice();
		return result;
	}

}
