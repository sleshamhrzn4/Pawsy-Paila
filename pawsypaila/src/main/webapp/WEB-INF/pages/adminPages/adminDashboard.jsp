<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Pawsy Paila</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminDashboard.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link href="https://fonts.googleapis.com/css2?family=Abhaya+Libre:wght@400;600;700;800&family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>

<div class="dashboard-wrapper">

    
    <aside class="sidebar">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/images/orange_logo.png" class="logo" alt="logo" style="width:150px; height:auto; ">
        </div>
        <nav class="sidebar-nav">
           <a href="${pageContext.request.contextPath}/AdminDashboard" class="nav-item">
        <img src="${pageContext.request.contextPath}/images/dashboard/dashboard.png" 
             alt="dashboard" style="width: 30px; height: auto;">
             Dashboard
        </a>
            <a href="${pageContext.request.contextPath}/AdminPets" class="nav-item">
        <img src="${pageContext.request.contextPath}/images/dashboard/paw.png" 
             alt="pets" style="width: 30px; height: auto;">
        Pets
    </a>

    <a href="${pageContext.request.contextPath}/AdminItems" class="nav-item">
        <img src="${pageContext.request.contextPath}/images/dashboard/cart.png" 
             alt="items" style="width: 30px; height: auto;">
        Items
    </a>

    <a href="${pageContext.request.contextPath}/AdminApplications" class="nav-item">
        <img src="${pageContext.request.contextPath}/images/dashboard/orders.png" 
             alt="applications" style="width: 30px; height: auto;">
        Applications
    </a>

    <a href="${pageContext.request.contextPath}/AdminReports" class="nav-item">
        <img src="${pageContext.request.contextPath}/images/dashboard/apps.png" 
             alt="reports" style="width: 30px; height: auto;">
        Reports
    </a>
        </nav>
        <div class="sidebar-user">
            <span class="user-icon">👤</span>
            <span>${sessionScope.userName}</span>
        </div>
    </aside>



    
    <main class="main-content">
        <div class="welcome-banner">
            <img src="${pageContext.request.contextPath}/images/dashboard/paw.png" 
             alt="pets" style="width: 40px; height: auto;">
            <h1>Welcome Back, ${sessionScope.userName}!</h1>
            <img src="${pageContext.request.contextPath}/images/dashboard/paw.png" 
             alt="pets" style="width: 40px; height: auto;">
        </div>

       
        <div class="stats-grid">
            <div class="stat-card">
                <p class="stat-label">Pets Listed</p>
                <p class="stat-value">${totalPets}</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">Adopt Requests</p>
                <p class="stat-value">${totalRequests}</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">Products Listed</p>
                <p class="stat-value">${totalProducts}</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">Revenue</p>
                <p class="stat-value">Rs. <fmt:formatNumber value="${totalRevenue}" pattern="#,##,##0"/></p>
            </div>
        </div>

        <div class="bottom-grid">

            <%-- Adoption Requests table --%>
            <div class="table-card">
                <h3>Adoption Requests</h3>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ar" items="${adoptionList}">
                            <tr>
                                <td>
                                    <span class="user-icon-sm">👤</span>
                                    ${ar.userName}
                                </td>
                                <td>${ar.requestDate}</td>
                                <td>${ar.adoptionStatus}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/ViewAdoption?id=${ar.adoptionId}">
                                        <button class="btn-view">View</button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="right-panel">

                <%-- Manage Pets --%>
                <div class="manage-card">
                    <div class="manage-header">
                        <h3>Manage Pets</h3>
                        <a href="${pageContext.request.contextPath}/AddPet">
                            <button class="btn-add">Add Pet</button>
                        </a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>Pet</th>
                                <th>Age</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="pet" items="${petList}">
                                <tr>
                                    <td>
                                        <span class="user-icon-sm">👤</span>
                                        ${pet.petName}
                                    </td>
                                    <td>${pet.age}</td>
                                    <td>${pet.petStatus}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/EditPet?id=${pet.petId}">
                                            <button class="btn-edit">Edit</button>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <%-- Manage Products --%>
                <div class="manage-card">
                    <div class="manage-header">
                        <h3>Manage Products</h3>
                        <a href="${pageContext.request.contextPath}/AddProduct">
                            <button class="btn-add">Add Product</button>
                        </a>
                    </div>
                    <div class="products-grid">
                        <c:forEach var="product" items="${productList}">
                            <div class="product-item">
                                <img src="${pageContext.request.contextPath}/images/products/${product.productId}.jpg"
                                     alt="${product.productName}">
                                <div class="product-info">
                                    <p class="product-name">${product.productName}</p>
                                    <p class="product-price">Rs.${product.price}</p>
                                </div>
                                <a href="${pageContext.request.contextPath}/EditProduct?id=${product.productId}">
                                    <button class="btn-edit">Edit</button>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div><%-- end right-panel --%>
        </div><%-- end bottom-grid --%>

    </main>
</div>

</body>
</html>