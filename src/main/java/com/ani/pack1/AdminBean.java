package com.ani.pack1;

import java.io.Serializable;

public class AdminBean implements Serializable
{
	private String a_uname;
	private String a_pwd;
	private String a_fname;
	private String a_lname;
	private String a_addr;
	private String a_mail;
	private String a_phn;
	
	public AdminBean()
	{
		
	}
	
	public String getA_uname() {
		return a_uname;
	}
	public void setA_uname(String a_uname) {
		this.a_uname = a_uname;
	}
	public String getA_pwd() {
		return a_pwd;
	}
	public void setA_pwd(String a_pwd) {
		this.a_pwd = a_pwd;
	}
	public String getA_fname() {
		return a_fname;
	}
	public void setA_fname(String a_fname) {
		this.a_fname = a_fname;
	}
	public String getA_lname() {
		return a_lname;
	}
	public void setA_lname(String a_lname) {
		this.a_lname = a_lname;
	}
	public String getA_addr() {
		return a_addr;
	}
	public void setA_addr(String a_addr) {
		this.a_addr = a_addr;
	}
	public String getA_mail() {
		return a_mail;
	}
	public void setA_mail(String a_mail) {
		this.a_mail = a_mail;
	}
	public String getA_phn() {
		return a_phn;
	}
	public void setA_phn(String a_phn) {
		this.a_phn = a_phn;
	}
	
	
}
