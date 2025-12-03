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

<!-- ⭐ CUSTOMER CARD -->
<div class="home-card">

    <h3 class="fw-bold mb-3" style="color:#333;">
        <%
            CustomerBean bean = (CustomerBean)session.getAttribute("CustomerBean");
            out.println("Welcome Mr. " + bean.getF_name() + "!");
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
    © 2025 Electronic Store | Designed by <strong>Anirudh Ghogre</strong>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
