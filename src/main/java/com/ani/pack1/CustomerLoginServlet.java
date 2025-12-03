package com.ani.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/clog")
public class CustomerLoginServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		CustomerBean bean = new CustomerLoginDAO().checkCustomerLogin(req.getParameter("aname"), req.getParameter("apwd"));
		
		if(bean == null)
		{
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("CustomerBean", bean);
			req.getRequestDispatcher("CustomerHome.jsp").forward(req, res);
		}
	}
}
