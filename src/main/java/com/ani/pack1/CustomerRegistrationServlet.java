package com.ani.pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/acs")
public class CustomerRegistrationServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session = req.getSession();
		
		if(session == null)
		{
			req.getRequestDispatcher("CustomerLogin.html").forward(req, res);
		} else {
			CustomerBean bean = new CustomerBean();
			
			bean.setU_name(req.getParameter("uname"));
			bean.setPwd(req.getParameter("pwd"));
			bean.setF_name(req.getParameter("fname"));
			bean.setL_name(req.getParameter("lname"));
			bean.setAddress(req.getParameter("addrs"));
			bean.setMail_id(req.getParameter("mid"));
			bean.setMobile(req.getParameter("mobile"));
			
			int rowCount = new CustomerRegisterDAO().newCustomer(bean);
			
			if(rowCount>0)
			{
				req.setAttribute("msg", "Customer Added Successfully!!");
				req.getRequestDispatcher("CustomerRegister.jsp").forward(req, res);
			} else {
				throw new RuntimeException("Customer Not Added!!!");
			}
		}
		
	}
}
