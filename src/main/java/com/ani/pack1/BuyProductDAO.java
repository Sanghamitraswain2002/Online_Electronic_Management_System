package com.ani.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BuyProductDAO 
{
	public int buyProduct(String pcode, String reqQty) 
    {
        int totalAmount = 0;

        try
        {
            Connection con = DBConnect.connect();

            int code = Integer.parseInt(pcode);
            int Qty = Integer.parseInt(reqQty);

            // 1. Fetch product (WHERE PCODE is VARCHAR2 or NUMBER both okay)
            PreparedStatement pstmt = con.prepareStatement("SELECT pprice, pqty FROM product WHERE pcode=?");
            pstmt.setString(1, pcode);
            
           ResultSet rs = pstmt.executeQuery();
           

            if(rs.next())
            {
                String priceStr = rs.getString("pprice");
                String qtyStr = rs.getString("pqty");

                int price = Integer.parseInt(priceStr);
                int availableQty = Integer.parseInt(qtyStr);

                if(Qty > availableQty)
                {
                    return -1;   // Insufficient stock
                }

                // Calculate total amount
                totalAmount = price * Qty;

                // New quantity
                int updatedQty = availableQty - Qty;

                // Update DB (store as VARCHAR2)
                PreparedStatement ps2 = con.prepareStatement("UPDATE product SET pqty=? WHERE pcode=?");
                ps2.setString(1, String.valueOf(updatedQty));
                ps2.setString(2, pcode);

                ps2.executeUpdate();
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return -2;   // Error occurred
        }

        return totalAmount;
    }
}
