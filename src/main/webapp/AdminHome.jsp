<%@page import="com.ani.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Home</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
    body {
        background: #eef2f7;
        font-family: 'Segoe UI', Arial, sans-serif;
    }

    .dashboard-card {
        max-width: 500px;
        margin: 120px auto;
        padding: 35px;
        background: #ffffff;
        border-radius: 18px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.12);
        animation: fadeIn 0.8s ease;
    }

    .dashboard-btn {
        width: 100%;
        padding: 14px;
        font-size: 17px;
        font-weight: 600;
        border-radius: 12px;
        margin-bottom: 15px;
        transition: 0.18s ease;
    }

    .dashboard-btn:hover {
        transform: translateY(-3px);
        opacity: 0.95;
    }

    /* Animation */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
	
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background:#1e3a8a;">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">
            <i class="fa-solid fa-user-shield"></i> Admin Dashboard
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="view1">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="carousel slide" data-bs-ride="carousel" id="topBanner">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="2500">
                <img src="https://rukminim2.flixcart.com/fk-p-flap/3240/540/image/aebf10e44c4c066f.jpeg?q=60" class="w-100 d-block">
            </div>

            <div class="carousel-item" data-bs-interval="2500">
                <img src="https://rukminim2.flixcart.com/fk-p-flap/3240/540/image/5ab0f654d9161154.jpg?q=60" class="w-100 d-block">
            </div>

            <div class="carousel-item" data-bs-interval="3500">
                <img src="https://rukminim2.flixcart.com/fk-p-flap/3240/540/image/6204fe0e1d4cd758.jpeg?q=60" class="w-100 d-block">
            </div>

            <div class="carousel-item" data-bs-interval="2500">
                <img src="https://rukminim2.flixcart.com/fk-p-flap/3240/540/image/bac6e385f3bd157c.jpeg?q=60" class="w-100 d-block">
            </div>
        </div>

        <!-- carousel Inner End -->
         <button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#topBanner">
            <span class="carousel-control-prev-icon"></span>
         </button>

         <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#topBanner">
            <span class="carousel-control-next-icon"></span>
         </button>

         <!-- carousel Indicators -->

         <div class="carousel-indicators">
            <!-- how much carousel that much button you have to need -->
            <button class="active rounded rounded-circle" data-bs-slide-to="0" data-bs-target="#topBanner"></button>
            <button data-bs-slide-to="1" data-bs-target="#topBanner"></button>
            <button data-bs-slide-to="2" data-bs-target="#topBanner"></button>
            <button data-bs-slide-to="3" data-bs-target="#topBanner"></button>
         </div>

    </div>

<!-- DASHBOARD CARD -->
<div class="dashboard-card">

    <h3 class="text-center fw-bold mb-4" style="color:#1e3a8a;">
        <% 
            AdminBean bean = (AdminBean)session.getAttribute("AdminBean");
            out.println("Welcome, " + bean.getA_fname() + "!");
        %>
    </h3>

    <a href="AddProduct.html" class="btn btn-primary dashboard-btn">
        <i class="fa-solid fa-plus"></i> &nbsp; Add Product
    </a>

    <a href="view1" class="btn btn-success dashboard-btn">
        <i class="fa-solid fa-box-open"></i> &nbsp; View Products
    </a>

    <a href="logout" class="btn btn-danger dashboard-btn">
        <i class="fa-solid fa-right-from-bracket"></i> &nbsp; Logout
    </a>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	
<footer class="bg-primary text-white text-center py-3 mt-5">
    © 2025 Electronic Store | Designed by <strong>Sanghamitra</strong>
</footer>
	

</body>
</html>
