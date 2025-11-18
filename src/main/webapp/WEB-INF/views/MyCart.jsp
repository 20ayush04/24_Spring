<%@page import="com.bean.ProductCartBean"%>
<%@page import="com.bean.EProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
          rel="stylesheet" 
          crossorigin="anonymous">
    <style>
        .cart-img { height: 80px; width: 80px; object-fit: cover; }
    </style>
</head>
<body>
    <div class="container mt-4">
        <h2 class="mb-4">🛒 My Cart</h2>

        <%
        List<ProductCartBean> products = (List<ProductCartBean>) request.getAttribute("products");
        Float price = 0.0f; 
        %>

        <div class="table-responsive">
            <table class="table table-striped table-hover align-middle caption-top">
                <thead class="table-dark">
                    <tr>
                        <th>CarId</th>
                        <th>ProductId</th>
                        <th>ProductName</th>
                        <th>Image</th>
                        <th>Price</th>
                        <th>Qty</th>
                        <th>Total Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for (ProductCartBean p : products) {
                        out.print("<tr>");
                        out.print("<td>" + p.getCartId() + "</td>");
                        out.print("<td>" + p.getProductId() + "</td>");
                        out.print("<td>" + p.getProductName() + "</td>");
                        out.print("<td><img class='cart-img img-fluid rounded' src='" + p.getProductImagePath() + "' alt='Product Image'/></td>");
                        out.print("<td>" + String.format("%.2f", p.getPrice()) + "</td>");
                        out.print("<td>" + p.getQty() + "</td>");
                        out.print("<td>" + String.format("%.2f", p.getQty() * p.getPrice()) + "</td>");
                        
                        out.print("<td><a href='removecartitem?cartId=" + p.getCartId() + "' class='btn btn-sm btn-danger'>Remove</a></td>");

                        out.print("</tr>");

                        price = price + (p.getPrice() * p.getQty());
                    }
                    %>
                </tbody>
            </table>
        </div>

        <div class="row mt-4">
            <div class="col-12 text-end">
                <h4 class="mb-3">
                    Total Price: <span class="text-success fw-bold">₹<%=String.format("%.2f", price)%></span>
                </h4>
                
                <a href="userproducts" class="btn btn-lg btn-secondary me-2">
                    &larr; Continue Shopping
                </a>
                
                <a href="checkout" class="btn btn-lg btn-primary">Proceed to Checkout</a>
            </div>
        </div>
        
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>