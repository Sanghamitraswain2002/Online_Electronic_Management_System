package com.ani.pack1;

import java.io.Serializable;

public class CustomerBean implements Serializable
{
	private String u_name, pwd, f_name, l_name, address, mail_id, mobile;
	
	public CustomerBean()
	{
		
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getL_name() {
		return l_name;
	}

	public void setL_name(String l_name) {
		this.l_name = l_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMail_id() {
		return mail_id;
	}

	public void setMail_id(String mail_id) {
		this.mail_id = mail_id;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	

	@Override
	public String toString() {
		return "CustomerBean [u_name=" + u_name + ", pwd=" + pwd + ", f_name=" + f_name + ", l_name=" + l_name
				+ ", address=" + address + ", mail_id=" + mail_id + ", mobile=" + mobile + "]";
	}
	
	
}
