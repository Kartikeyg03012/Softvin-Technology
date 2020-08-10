package com.DAO;

public class VacancyDetails {
	private String name;
	private String email;
	private String number;
	private String message;
	
	
	public VacancyDetails() {
		
	}
	
	public VacancyDetails(String name, String email, String number, String message) {
		super();
		this.name = name;
		this.email = email;
		this.number = number;
		this.message = message;
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getMessage() {
		return message;
	}
	public void getMessage(String message) {
		this.message = message;
	}
	

}
