package com.ani.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO 
{
	public int updateProduct(ProductBean bean)
	{
		int rowCount = 0;
		
		try
		{
			Connection con = DBConnect.connect();
			PreparedStatement pstmt = con.prepareStatement("UPDATE PRODUCT SET PPRICE=?,PQTY=? WHERE PCODE=?");
			pstmt.setString(1, bean.getP_price());
			pstmt.setString(2, bean.getP_quantity());
			pstmt.setString(3, bean.getP_code());
			
			rowCount = pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return rowCount;
	}
}
