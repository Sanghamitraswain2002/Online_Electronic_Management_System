package com.ani.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ViewCustomerProductsDAO 
{
ArrayList<ProductBean> al = new ArrayList<ProductBean>();
	
	public ArrayList<ProductBean> viewProducts()
	{
		try {
			Connection con = DBConnect.connect();
			PreparedStatement pstmt = con.prepareStatement("SELECT * FROM PRODUCT");
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ProductBean bean = new ProductBean();
				
				bean.setP_code(rs.getString(1));
				bean.setP_name(rs.getString(2));
				bean.setP_company(rs.getString(3));
				bean.setP_price(rs.getString(4));
				bean.setP_quantity(rs.getString(5));
				
				al.add(bean);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return al;
	}
}
