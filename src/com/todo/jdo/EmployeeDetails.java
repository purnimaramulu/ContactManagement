package com.todo.jdo;


import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;

import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;




@PersistenceCapable
public class EmployeeDetails {
	
@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long key;
@Persistent
	private String name;
@PrimaryKey
@Persistent
	private String emailID;


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