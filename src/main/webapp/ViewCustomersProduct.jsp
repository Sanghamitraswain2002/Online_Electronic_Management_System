<%@page import="java.util.Iterator"%>
<%@page import="com.ani.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ani.pack1.CustomerBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>

<!-- BOOTSTRAP -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- ICONS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
    body {
        background: #f2f4f7;
        font-family: 'Segoe UI', sans-serif;
        font-weight: 400;   /* NORMAL TEXT */
    }
    table, td, th {
        font-weight: 400 !important;  /* Ensure table text is not bold */
    }
    .navbar-brand,
    .nav-link {
        font-weight: 400; /* Normal navbar font */
    }
    h4, h2 {
        font-weight: 600; /* Only headings semi-bold */
    }
    .logout-btn {
        font-weight: 500; /* Slight bold for button */
    }
    .product-table {
        width: 85%;
        background: white;
        border-radius: 10px;
        padding: 0;
        box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        margin-top: 30px;
    }
</style>

</head>

<body>

<!-- ⭐ NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark" style="background:#1e3a8a;">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fa-solid fa-store"></i> Electronic Store
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navMenu">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="CustomerHome.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="view2">Products</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- ⭐ PAGE CONTENT -->
<center>
<br>

<h4>
    <%
        CustomerBean cbean = (CustomerBean)session.getAttribute("CustomerBean");
        ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("ProductList");

        out.println("<u>Hello " + cbean.getF_name() + ", these are your product details</u><br><br>");

        if (al == null || al.size() == 0) {
            out.println("<h2 style='color:red;'>No Products Available</h2>");
        } else {
    %>

    <!-- ⭐ PRODUCT TABLE -->
    <table class="table table-bordered product-table">
        <thead class="table-primary">
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
            Iterator<ProductBean> i = al.iterator();
            while(i.hasNext()) {
                ProductBean pb = i.next();
        %>
            <tr>
                <td><%= pb.getP_code() %></td>
                <td><%= pb.getP_name() %></td>
                <td><%= pb.getP_company() %></td>
                <td><%= pb.getP_price() %></td>
                <td><%= pb.getP_quantity() %></td>
                <td>
                    <a href="buy?pcode=<%=pb.getP_code()%>" class="text-success">
                        <i class="fa-solid fa-cart-plus"></i> Buy
                    </a>
                </td>
            </tr>
        <% } %>
        </tbody>
    </table>

<% } %>

<!-- LOGOUT BUTTON -->
<a href="logout" class="logout-btn btn btn-danger">
    <i class="fa-solid fa-right-from-bracket"></i> Logout
</a>

</center>

<!-- ⭐ FOOTER -->
<footer class="bg-primary text-white text-center py-3 mt-5">
    © 2025 Electronic Store | Designed by <strong>Anirudh Ghogre</strong>
</footer>

<!-- BOOTSTRAP JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
