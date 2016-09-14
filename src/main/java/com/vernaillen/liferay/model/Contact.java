package com.vernaillen.liferay.model;
import java.io.Serializable;

import org.hibernate.validator.constraints.NotEmpty;


public class Contact implements Serializable {

	
	private Integer id;

	@NotEmpty
	private String firstname;

	private String lastname;

	private String email;
	
	private String telephone;
	
	
	public String getEmail() {
		return email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getFirstname() {
		return firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setFirstname(String firstname) {
		System.out.println("=============="+firstname);
		this.firstname = firstname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
}
