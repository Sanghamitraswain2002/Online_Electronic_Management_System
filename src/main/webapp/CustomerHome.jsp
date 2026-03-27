<%@page import="com.ani.pack1.CustomerBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Customer Home</title>

<!-- BOOTSTRAP -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ICONS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- CUSTOM CSS -->
<link rel="stylesheet" href="css/style.css">

<style>
    body {
        background: #eef2f3;
        font-family: "Segoe UI", Arial, sans-serif;
    }

    .home-card {
        max-width: 380px;
        background: white;
        margin: 60px auto;        /* reduced height */
        padding: 20px;            /* more compact */
        border-radius: 14px;
        box-shadow: 0 6px 18px rgba(0,0,0,0.15);
        animation: fadeIn 0.7s ease;
        text-align: center;
    }

    .home-btn {
        width: 80%;
        padding: 10px;
        font-size: 17px;
        font-weight: bold;
        border-radius: 6px;
        display: block;
        margin: 10px auto;
        text-decoration: none;
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
            <i class="fa-solid fa-house-user"></i> Customer Home
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="CustomerHome.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="view2">View Products</a></li>
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

<!-- ⭐ CUSTOMER CARD -->
<div class="home-card">

    <h3 class="fw-bold mb-3" style="color:#333;">
        <%
            CustomerBean bean = (CustomerBean)session.getAttribute("CustomerBean");
            out.println("Welcome " + bean.getF_name() + "!");
        %>
    </h3>

    <a href="view2" class="home-btn btn btn-primary">
        <i class="fa-solid fa-eye"></i> View Products
    </a>

    <a href="logout" class="home-btn btn btn-danger">
        <i class="fa-solid fa-right-from-bracket"></i> Logout
    </a>

</div>

<!-- ⭐ FOOTER -->
<footer class="bg-primary text-white text-center py-3 mt-5">
    © 2025 Electronic Store | Designed by <strong>Sanghamitra Ghogre</strong>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
