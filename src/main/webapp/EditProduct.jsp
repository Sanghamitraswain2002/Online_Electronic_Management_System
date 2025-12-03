<%@page import="com.ani.pack1.ProductBean"%>
<%@page import="com.ani.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit Product</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css">

<style>
    body {
        background: #f4f6fa;
        font-family: "Segoe UI", Arial, sans-serif;
    }

    .edit-card {
        max-width: 500px;
        background: white;
        margin: 40px auto;
        padding: 25px;
        border-radius: 14px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        animation: fadeIn 0.7s ease;
    }

    .edit-header {
        background: linear-gradient(135deg, #1e3a8a, #2563eb);
        padding: 12px;
        border-radius: 10px;
        color: white;
        font-size: 20px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 20px;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>

<body>

<!-- ⭐ NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background:#1e3a8a;">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">
            <i class="fa-solid fa-pen-to-square"></i> Edit Product
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="AdminHome.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="view1">View Products</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- ⭐ FETCH DATA -->
<%
    AdminBean abean = (AdminBean)session.getAttribute("AdminBean");
    ProductBean pb = (ProductBean)request.getAttribute("pbitem");
%>

<!-- ⭐ EDIT CARD -->
<div class="edit-card">

    <div class="edit-header">
        <i class="fa-solid fa-user"></i> Hello <%= abean.getA_fname() %>, Edit Product
    </div>

    <form action="update" method="post">

        <!-- PRICE -->
        <div class="mb-3">
            <label class="form-label fw-semibold">
                <i class="fa-solid fa-indian-rupee-sign"></i> Product Price
            </label>
            <input type="number" name="pprice" value="<%= pb.getP_price() %>"
                   class="form-control form-control-md" required>
        </div>

        <!-- QUANTITY -->
        <div class="mb-3">
            <label class="form-label fw-semibold">
                <i class="fa-solid fa-boxes-stacked"></i> Product Quantity
            </label>
            <input type="number" name="pqty" value="<%= pb.getP_quantity() %>"
                   class="form-control form-control-md" required>
        </div>

        <!-- HIDDEN -->
        <input type="hidden" name="pcode" value="<%= pb.getP_code() %>">

        <!-- SUBMIT BUTTON -->
        <button type="submit" class="btn btn-success w-100 py-2 mt-2">
            <i class="fa-solid fa-circle-check"></i> Update Product
        </button>

    </form>
</div>

<!-- ⭐ FOOTER -->
<footer class="bg-primary text-white text-center py-3 mt-5">
    © 2025 Electronic Store | Designed by <strong>Anirudh Ghogre</strong>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
