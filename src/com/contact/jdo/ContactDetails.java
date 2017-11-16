package com.contact.jdo;


import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;

import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;




@PersistenceCapable
public class ContactDetails {
	
@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long key;
@Persistent
	private String name;
@PrimaryKey
@Persistent
	private String emailID;

@Persistent
private String mobilenumber;

@Persistent
private String Adress;


public String getAdress() {
	return Adress;
}
public void setAdress(String adress) {
	Adress = adress;
}
public String getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(String mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return emailID;
}
public void setEmail(String email) {
	this.emailID = email;
}

	
}