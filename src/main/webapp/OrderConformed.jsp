<%@page import="com.ani.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Success</title>

<!-- NAV + FOOTER STYLE -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #eef2f3;
        margin: 0;
        padding: 0;
    }

    /* Navbar */
    .navbar {
        background-color: #0d6efd;
        padding: 12px 25px;
        color: white;
        font-size: 20px;
        font-weight: bold;
        text-align: left;
        box-shadow: 0 3px 10px rgba(0,0,0,0.15);
    }

    /* Success Box */
    .success-box {
        margin: 70px auto;
        width: 420px;
        padding: 35px;
        background: white;
        border-radius: 12px;
        box-shadow: 0 0 12px rgba(0,0,0,0.18);
        text-align: center;
    }

    .success-title {
        color: #28a745;
        font-size: 26px;
        margin-bottom: 15px;
    }

    .btn {
        display: block;
        padding: 12px;
        border-radius: 6px;
        text-decoration: none;
        font-size: 18px;
        font-weight: bold;
        width: 65%;
        margin: 12px auto;
        transition: 0.3s;
    }

    .btn-blue {
        background: #007bff;
        color: white;
    }
    .btn-blue:hover {
        background: #005ad1;
    }

    .btn-red {
        background: #dc3545;
        color: white;
    }
    .btn-red:hover {
        background: #b32030;
    }

    /* Footer */
    .footer {
        background-color: #0d6efd;
        color: white;
        text-align: center;
        padding: 12px;
        font-size: 14px;
        margin-top: 80px;
    }
</style>

</head>

<body>

<!-- NAVBAR -->
<!-- NAVBAR -->
<div class="navbar">
    <span style="font-size:22px; font-weight:bold;">Electronic Store</span>

    <div style="float:right; margin-top:-2px;">
        <a href="CustomerHome.jsp" 
           style="color:white; padding:6px 14px; 
                  border-radius:5px; text-decoration:none; font-size:16px; font-weight:bold; margin-right:10px;">
            Home
        </a>

        <a href="view2" 
           style=" color:white; padding:6px 14px; 
                  border-radius:5px; text-decoration:none; font-size:16px; font-weight:bold; margin-right:10px;">
            Products
        </a>

        <a href="logout" 
           style="background-color:red; color:white; padding:6px 14px; 
                  border-radius:5px; text-decoration:none; font-size:16px; font-weight:bold;">
            Logout
        </a>
    </div>
</div>


<!-- SUCCESS CONTAINER -->
<center>
<div class="success-box">

    <h2 class="success-title">Order Placed Successfully!</h2>

    <p style="font-size: 20px; color:#333;">
        <%  
            CustomerBean cbean = (CustomerBean)session.getAttribute("CustomerBean");
            out.println("Hello " + cbean.getF_name() + "!");
        %>
    </p>

    <p style="font-size: 18px; color:#444;">
        You have been charged 
        <b style="color:#000;"><%= request.getAttribute("totalAmount") %> Rs</b>
    </p>

    <p style="font-size: 18px; color:#444;">
        Your order of 
        <b style="color:#000;"><%= request.getAttribute("qty") %></b> 
        quantity is successfully placed!
    </p>

    <a href="view2" class="btn btn-blue">View More Products</a>

    <a href="logout" class="btn btn-red">Logout</a>

</div>


<!-- FOOTER -->
<div class="footer">
    © 2025 Electronic Store | Designed by Anirudh Ghogre
</div>

</body>
</html>
