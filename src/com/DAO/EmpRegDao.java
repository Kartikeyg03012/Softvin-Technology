package com.DAO;

public class EmpRegDao {
	private String ename;
	private String edesig;
	private float esalary;
	private String emno;
	private String eex;
	private String equl;
	private String eadd;
	private String egender;
	
public EmpRegDao() {
	
}


	public EmpRegDao(String ename, String edesig, float esalary, String emno, String eex, String equl, String eadd,
		String egender) {
	super();
	this.ename = ename;
	this.edesig = edesig;
	this.esalary = esalary;
	this.emno = emno;
	this.eex = eex;
	this.equl = equl;
	this.eadd = eadd;
	this.egender = egender;
}


	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEdesig() {
		return edesig;
	}
	public void setEdesig(String edesig) {
		this.edesig = edesig;
	}
	public float getEsalary() {
		return esalary;
	}
	public void setEsalary(float esalary) {
		this.esalary = esalary;
	}
	public String getEmno() {
		return emno;
	}
	public void setEmno(String emno) {
		this.emno = emno;
	}
	public String getEex() {
		return eex;
	}
	public void setEex(String eex) {
		this.eex = eex;
	}
	public String getEqul() {
		return equl;
	}
	public void setEqul(String equl) {
		this.equl = equl;
	}
	public String getEadd() {
		return eadd;
	}
	public void setEadd(String eadd) {
		this.eadd = eadd;
	}
	public String getEgender() {
		return egender;
	}
	public void setEgender(String egender) {
		this.egender = egender;
	}
	
}
