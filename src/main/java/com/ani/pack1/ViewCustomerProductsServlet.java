package com.ani.pack1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/view2")
public class ViewCustomerProductsServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session = req.getSession();
		ArrayList<ProductBean> viewProducts = new ViewCustomerProductsDAO().viewProducts();
		session.setAttribute("ProductList", viewProducts);
		req.getRequestDispatcher("ViewCustomersProduct.jsp").forward(req, res);
	}	
}
