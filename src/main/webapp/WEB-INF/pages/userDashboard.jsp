<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard - Pawsy</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/userDashboard.css">
</head>
<body>

<div class="wrapper">
    <div class="sidebar">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/images/orange_logo.png" alt="Pawsy Logo">
        </div>

        <ul class="nav-links">
            <li class="active">
                <img src="${pageContext.request.contextPath}/images/dashboard/dashboard.png" alt="icon">
                <a href="#">Dashboard</a>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/images/dashboard/paw.png" alt="icon">
                <a href="#">Browse Pets</a>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/images/dashboard/cart.png" alt="icon">
                <a href="#">Shop Items</a>
            </li>
           <li>
                <img src="${pageContext.request.contextPath}/images/dashboard/apps.png" alt="icon">
                <a href="#">My Applications</a>
            </li>
           <li>
                <img src="${pageContext.request.contextPath}/images/dashboard/orders.png" alt="icon">
                <a href="#">My orders</a>
            </li>
            
            <li>
                <img src="${pageContext.request.contextPath}/images/dashboard/donate.png" alt="icon">
                <a href="#">Donate</a>
            </li>
        </ul>

        <div class="user-info-bottom">
            <img src="${pageContext.request.contextPath}/images/dashboard/usericon.png" alt="User" class="profile-img">
            <span>Yunisha Basnet</span>
        </div>
    </div>

   


    <div class="main-content">
        <div class="welcome-banner">
            <span class="paw-icon">🐾</span>
            <h1>Welcome Back, Yunisha!</h1>
            <span class="paw-icon">🐾</span>
        </div>

        <div class="stats-row">
            <div class="stat-card">
                <p class="stat-label">Adopted Pets</p>
                <p class="stat-number blue">1</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">My Applications</p>
                <p class="stat-number orange">3</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">My Orders</p>
                <p class="stat-number">76</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">Donated</p>
                <p class="stat-number green">Rs. 6,700</p>
            </div>
        </div>

        <div class="dashboard-grid">
            <div class="card profile-card">
                <h3 class="card-title-center">My Profile</h3>
                <div class="profile-header">
                    <img src="${pageContext.request.contextPath}/images/dashboard/usericon.png" alt="Avatar" class="large-avatar">
                    <div class="name-email">
                        <h2>Yunisha Basnet</h2>
                        <p>missyunisha@gmail.com</p>
                    </div>
                </div>
                <div class="profile-details">
                    <div class="detail-row"><span>Phone</span><strong>+977 9800000000</strong></div>
                    <div class="detail-row"><span>Address</span><strong>Dillibazar, Kathmandu</strong></div>
                    <div class="detail-row"><span>Role</span><strong>Member</strong></div>
                    <div class="detail-row"><span>Member Since</span><strong>14 Jan 2026</strong></div>
                </div>
            </div>

            <div class="right-column">
                <div class="card">
                    <h3 class="card-title-center">My Applications</h3>
                    <table class="simple-table">
                        <tr><td>Milo</td><td class="status">Pending</td></tr>
                        <tr><td>Kai</td><td class="status">Reviewing</td></tr>
                        <tr><td>Bunny</td><td class="status">Approved</td></tr>
                    </table>
                </div>

                <div class="bottom-split">
                    <div class="card mini-card">
                        <h3 class="card-title-center">My Orders</h3>
                        <div class="order-item"><span>YakChew</span><span>Rs. 500</span></div>
                        <div class="order-item"><span>DogDen</span><span>Rs. 7000</span></div>
                        <div class="order-item"><span>Milo Hoodie</span><span>Rs. 500</span></div>
                    </div>
                    <div class="card mini-card donate-card">
                        <h3 class="card-title-center">Donate</h3>
                        <p class="tiny-text">Your donations help us care for pets</p>
                        <div class="amount-chips">
                            <span>Rs.100</span><span>Rs.500</span><span>Rs.1000</span>
                        </div>
                        <input type="text" placeholder="Enter Amount">
                        <button class="donate-btn">Donate</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>