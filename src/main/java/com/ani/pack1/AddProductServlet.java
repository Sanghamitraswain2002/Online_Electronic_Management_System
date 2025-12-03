package com.ani.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		try
		{
			HttpSession session = req.getSession();
			
			if(session == null)
			{
				req.getRequestDispatcher("AdminLogin.html").forward(req, res);
			} else {
				ProductBean bean = new ProductBean();
				
				bean.setP_code(req.getParameter("pcode"));
				bean.setP_name(req.getParameter("pname"));
				bean.setP_company(req.getParameter("pcompany"));
				bean.setP_price(req.getParameter("pprice"));
				bean.setP_quantity(req.getParameter("pqty"));
				
				int rowCount = new AddProductDAO().iinsertProduct(bean);
				
				if(rowCount>0)
				{
					req.setAttribute("msg", "Product Added to the inventory");
					req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
				} 
//				else
//					throw new RuntimeException("Product Inventory NOT updated!!!");
			}
		}
		catch(Exception e)
		{
			req.setAttribute("msg", "Duplicate Product Id's are not allowed");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}
	}
}
