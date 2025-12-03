<%@page import="com.ani.pack1.ProductBean"%>
<%@page import="com.ani.pack1.CustomerBean"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>

<!-- BOOTSTRAP -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ICONS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
    body {
        background: #eef2f3;
        font-family: 'Segoe UI', sans-serif;
    }
    .buy-container {
        width: 50%;
        margin-top: 50px;
        padding: 30px;
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0px 5px 18px rgba(0,0,0,0.15);
    }
    .left-box {
        padding-right: 30px;
        border-right: 1px solid #ddd;
    }
    .right-box {
        padding-left: 30px;
    }
    .product-info p {
        font-size: 16px;
        margin: 10px 0;
    }
    footer {
        margin-top: 70px;
        font-size: 16px;
    }
</style>

</head>
<body>

<!-- ⭐ NAVIGATION BAR -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background:#1e3a8a;">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fa-solid fa-store"></i> Electronic Store
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="menu">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="CustomerHome.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="view2">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- ⭐ PAGE LOGIC -->
<%
    CustomerBean cbean = (CustomerBean)session.getAttribute("CustomerBean");
    ProductBean pb = (ProductBean)request.getAttribute("pbitem");
%>

<center>
    <h2 class="mt-4" style="font-weight:600;">
        Hello <%=cbean.getF_name()%>, Review Product & Enter Quantity
    </h2>

    <div class="buy-container row mt-4">

        <!-- ⭐ LEFT SIDE — PRODUCT DETAILS -->
        <div class="col-md-6 left-box">
            <h4 class="mb-3"><i class="fa-solid fa-box"></i> Product Details</h4>

            <div class="product-info">
                <p><strong>Product Code:</strong> <%=pb.getP_code()%></p>
                <p><strong>Product Name:</strong> <%=pb.getP_name()%></p>
                <p><strong>Company:</strong> <%=pb.getP_company()%></p>
                <p><strong>Price:</strong> ₹<%=pb.getP_price()%></p>
                <p><strong>Available Quantity:</strong> <%=pb.getP_quantity()%></p>
            </div>
        </div>

        <!-- ⭐ RIGHT SIDE — USER INPUT -->
        <div class="col-md-6 right-box">
            <h4 class="mb-3"><i class="fa-solid fa-cart-arrow-down"></i> Enter Required Quantity</h4>

            <form action="updateproduct" method="post">

                <input type="hidden" name="pcode" value="<%=pb.getP_code()%>">

                <label class="form-label">Required Quantity</label>
                <input type="number" name="reqQty" min="1" max="<%=pb.getP_quantity()%>" 
                       class="form-control mb-3" required>

                <button type="submit" class="btn btn-success w-100 mt-3" style="font-size:18px;">
                    <i class="fa-solid fa-bag-shopping"></i> Buy Now
                </button>

            </form>
        </div>
    </div>

</center>

<!-- ⭐ FOOTER -->
<footer class="bg-primary text-white text-center py-3">
    © 2025 Electronic Store | Designed by <strong>Anirudh Ghogre</strong>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
