package com.demo.entities;
// Generated Nov 23, 2021, 8:37:11 AM by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Tags generated by hbm2java
 */
@Entity
@Table(name = "tags", catalog = "ecommerce_db")
public class Tags implements java.io.Serializable {

	private Integer id;
	private String name;
	private boolean status;
	private Set<TagProducts> tagProductses = new HashSet<TagProducts>(0);

	public Tags() {
	}

	public Tags(String name, boolean status) {
		this.name = name;
		this.status = status;
	}

	public Tags(String name, boolean status, Set<TagProducts> tagProductses) {
		this.name = name;
		this.status = status;
		this.tagProductses = tagProductses;
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

	@Column(name = "name", nullable = false, length = 60)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "tags")
	public Set<TagProducts> getTagProductses() {
		return this.tagProductses;
	}

	public void setTagProductses(Set<TagProducts> tagProductses) {
		this.tagProductses = tagProductses;
	}

}