package com.ani.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
	public int iinsertProduct(ProductBean bean) throws Exception
	{
		int rowCount = 0;
		
		try
		{
			Connection con = DBConnect.connect();
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO PRODUCT VALUES(?,?,?,?,?)");
			pstmt.setString(1, bean.getP_code());
			pstmt.setString(2, bean.getP_name());
			pstmt.setString(3, bean.getP_company());
			pstmt.setString(4, bean.getP_price());
			pstmt.setString(5, bean.getP_quantity());
			
			rowCount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
//			e.printStackTrace();
			throw e;
		}
		
		return rowCount;
	}
}
