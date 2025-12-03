package com.ani.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegisterDAO 
{
	public int newCustomer(CustomerBean bean)
	{
		int rowCount = 0;
		
		try
		{
			
			Connection con = DBConnect.connect();
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO CUSTOMER VALUES(?,?,?,?,?,?,?)");
			pstmt.setString(1, bean.getU_name());
			pstmt.setString(2, bean.getPwd());
			pstmt.setString(3, bean.getF_name());
			pstmt.setString(4, bean.getL_name());
			pstmt.setString(5, bean.getAddress());
			pstmt.setString(6, bean.getMail_id());
			pstmt.setString(7, bean.getMobile());
			
			rowCount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return rowCount ;
	}
}
