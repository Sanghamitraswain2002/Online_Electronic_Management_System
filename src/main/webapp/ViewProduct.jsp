<%@page import="com.ani.pack1.AdminBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.ani.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Product Details</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">

<style>
    body {
        background-color: #f4f6fa;
        font-family: "Segoe UI", Arial, sans-serif;
    }

    .table-container {
        background: white;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 4px 18px rgba(0,0,0,0.1);
        width: 90%;
        margin: 40px auto;
    }

    .table thead th {
        background: #1e3a8a !important;
        color: white !important;
        text-align: center;
        font-size: 17px;
    }

    .table tbody tr:hover {
        background: #f0f4ff;
    }

    .action-link {
        font-weight: bold;
        margin: 0 5px;
    }
</style>

</head>

<body>

<!-- 🚀 NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background:#1e3a8a;">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">
            <i class="fa-solid fa-boxes-stacked"></i> Product Dashboard
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="AdminHome.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="AddProduct.html">Add Product</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- ⭐ MAIN CONTENT -->

<%
    AdminBean abean = (AdminBean)session.getAttribute("AdminBean");
    ArrayList<ProductBean> products = (ArrayList<ProductBean>)session.getAttribute("ProductList");
%>

<div class="container mt-4">
    <h3 class="text-center fw-bold mb-4">
        Hello <%= abean.getA_fname() %>, here are your product details
    </h3>
</div>

<div class="table-container">

    <% if (products == null || products.size() == 0) { %>

        <h4 class="text-center text-danger">No Products Found</h4>

    <% } else { %>

    <table class="table table-bordered table-striped text-center">
        <thead class="table-dark">
            <tr>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Company</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>
        <%
            for(ProductBean pb : products) {
        %>
            <tr>
                <td><%= pb.getP_code() %></td>
                <td><%= pb.getP_name() %></td>
                <td><%= pb.getP_company() %></td>
                <td><%= pb.getP_price() %></td>
                <td><%= pb.getP_quantity() %></td>

                <td>
                    <a href="edit?pcode=<%= pb.getP_code() %>" class="text-success action-link">
                        <i class="fa-solid fa-pen-to-square"></i> Edit
                    </a>
                    |
                    <a href="delete?pcode=<%= pb.getP_code() %>" class="text-danger action-link">
                        <i class="fa-solid fa-trash"></i> Delete
                    </a>
                </td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <% } %>

    <div class="text-center mt-4">
        <a href="logout" class="btn btn-danger px-4">
            <i class="fa-solid fa-right-from-bracket"></i> Logout
        </a>
    </div>

</div>

<!-- ⭐ FOOTER -->
<footer class="bg-primary text-white text-center py-3 mt-5">
    © 2025 Electronic Store | Designed by <strong>Anirudh Ghogre</strong>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
