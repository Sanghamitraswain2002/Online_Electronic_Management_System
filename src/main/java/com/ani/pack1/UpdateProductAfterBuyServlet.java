package com.ani.pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateproduct")
public class UpdateProductAfterBuyServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session = req.getSession();
		if(session==null)
		{
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		} else {
			String pcode = req.getParameter("pcode");
			
	        
			ArrayList<ProductBean> al =(ArrayList<ProductBean>)session.getAttribute("ProductList");
			Iterator<ProductBean> i = al.iterator();
			ProductBean pb = null;
			
			while(i.hasNext())
			{
				pb = i.next();
				if(pcode.equals(pb.getP_code()))
				{
					break;
				}
			}
			String reqQty = req.getParameter("reqQty");

	        BuyProductDAO dao = new BuyProductDAO();
	        int total = dao.buyProduct(pcode, reqQty);
	        
			req.setAttribute("qty", reqQty);
			req.setAttribute("pbitem", pb);
			req.setAttribute("totalAmount", total);
			req.getRequestDispatcher("OrderConformed.jsp").forward(req, res);
		}	
	}
		
}
