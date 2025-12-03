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

@WebServlet("/buy")
public class BuyProductServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session = req.getSession();
		
		
		if(session == null)
		{
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		} else {
			String pcode = req.getParameter("pcode");
//	        String reqQty = req.getParameter("reqqty");

//	        BuyProductDAO dao = new BuyProductDAO();
//	        int total = dao.buyProduct(pcode, reqQty);
	        
			ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("ProductList");
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
			req.setAttribute("pbitem", pb);
//			req.setAttribute("totalAmount", total);
			req.getRequestDispatcher("BuyProduct.jsp").forward(req, res);
			
		}
	}
}
