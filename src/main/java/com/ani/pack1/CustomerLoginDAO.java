package com.ani.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
	public CustomerBean checkCustomerLogin(String username, String pwd)
	{
		CustomerBean bean = null;
		
		try
		{
			Connection con = DBConnect.connect();
			PreparedStatement pstmt = con.prepareStatement("SELECT * FROM CUSTOMER WHERE UNAME=? AND PWORD=?");
			pstmt.setString(1, username);
			pstmt.setString(2, pwd);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				bean = new CustomerBean();
				
				bean.setU_name(rs.getString(1));
				bean.setPwd(rs.getString(2));
				bean.setF_name(rs.getString(3));
				bean.setL_name(rs.getString(4));
				bean.setAddress(rs.getString(5));
				bean.setMail_id(rs.getString(6));
				bean.setMobile(rs.getString(7));
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return bean;
	}
}
