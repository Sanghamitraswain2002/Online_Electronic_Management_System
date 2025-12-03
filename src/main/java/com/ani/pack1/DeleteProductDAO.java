package com.ani.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO 
{
	public int deleteProduct(String pcode)
	{
		int rowCount = 0;
		
		try
		{
			Connection con = DBConnect.connect();
			PreparedStatement pstmt = con.prepareStatement("DELETE FROM PRODUCT WHERE PCODE=?");
			pstmt.setString(1, pcode);
			rowCount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return rowCount;
	}
}
