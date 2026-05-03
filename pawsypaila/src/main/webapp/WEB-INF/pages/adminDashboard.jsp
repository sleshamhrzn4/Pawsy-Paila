<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Pawsy</title>
    <link rel="stylesheet" href="./css/adminDashboard.css">
</head>
<body>

<div class="wrapper">

    <!--  SIDEBAR  -->
    <div class="sidebar">

        <!-- Logo -->
        <div class="logo">
            <img src="./images/logo.png" alt="Pawsy Logo">
        </div>

        <!-- Navigation Links -->
        <ul class="nav-links">
            <li class="active">
                <img src="./images/dashboard.png" alt="dashboard">
                <a href="adminDashboard">Dashboard</a>
            </li>
            <li>
                <img src="./images/pets.png" alt="pets">
                <a href="pets">Pets</a>
            </li>
            <li>
                <img src="./images/items.png" alt="items">
                <a href="items">Items</a>
            </li>
            <li>
                <img src="./images/orders.png" alt="orders">
                <a href="applications">Applications</a>
            </li>
            <li>
                <img src="./images/report.png" alt="report">
                <a href="reports">Reports</a>
            </li>
        </ul>

        <!-- User Info at Bottom -->
        <div class="user-info">
            <img src="./images/profile.png" alt="profile" class="profile-img">
            <span class="user-name">Yunisha B.</span>
        </div>

    </div>
    <!-- Side ended -->


    <!-- main content-->
    <div class="main-content">

        <!-- Welcome Banner -->
        <div class="welcome-banner">
            <h1>Welcome Back, Yunisha!</h1>
        </div>

        <!-- Stat Cards -->
        <div class="stats-row">
            <div class="stat-card">
                <p class="stat-label">Pets Listed</p>
                <p class="stat-number">67</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">Adopt Requests</p>
                <p class="stat-number orange">16</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">Products</p>
                <p class="stat-number">76</p>
            </div>
            <div class="stat-card">
                <p class="stat-label">Revenue</p>
                <p class="stat-number orange small">Rs. 67,00,000</p>
            </div>
        </div>

        <!-- Bottom Section -->
        <div class="bottom-section">

            <!-- Adoption Requests Table -->
            <div class="card">
                <h3 class="card-title">Adoption Requests</h3>
                <table>
                    <tbody>
                        <tr>
                            <td><img src="./images/profile.png" alt="profile" class="profile-img"></td>
                            <td>Ramesh Shrestha</td>
                            <td>Apr 6, 2026</td>
                            <td><span class="badge pending">Pending</span></td>
                            <td><a href="#">Review</a></td>
                        </tr>
                        <tr>
                            <td><img src="./images/profile.png" alt="profile" class="profile-img"></td>
                            <td>Haresh Maharjan</td>
                            <td>Apr 2, 2026</td>
                            <td><span class="badge reviewing">Reviewing</span></td>
                            <td><a href="#">Review</a></td>
                        </tr>
                        <tr>
                            <td><img src="./images/profile.png" alt="profile" class="profile-img"></td>
                            <td>Charesh Chettri</td>
                            <td>Mar 18, 2026</td>
                            <td><span class="badge approved">Approved</span></td>
                            <td><a href="#">View</a></td>
                        </tr>
                        <tr>
                            <td><img src="./images/profile.png" alt="profile" class="profile-img"></td>
                            <td>Muresh Limbu</td>
                            <td>Mar 8, 2026</td>
                            <td><span class="badge rejected">Rejected</span></td>
                            <td><a href="#">View</a></td>
                        </tr>
                        <tr>
                            <td><img src="./images/profile.png" alt="profile" class="profile-img"></td>
                            <td>Ramesh Shrestha</td>
                            <td>Apr 6, 2026</td>
                            <td><span class="badge pending">Pending</span></td>
                            <td><a href="#">Review</a></td>
                        </tr>
                        <tr>
                            <td><img src="./images/profile.png" alt="profile" class="profile-img"></td>
                            <td>Haresh Maharjan</td>
                            <td>Apr 2, 2026</td>
                            <td><span class="badge reviewing">Reviewing</span></td>
                            <td><a href="#">Review</a></td>
                        </tr>
                        <tr>
                            <td><img src="./images/profile.png" alt="profile" class="profile-img"></td>
                            <td>Charesh Chettri</td>
                            <td>Mar 18, 2026</td>
                            <td><span class="badge approved">Approved</span></td>
                            <td><a href="#">View</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Right Side: Donations + Payments -->
            <div class="right-side">

                <!-- Donations -->
                <div class="card">
                    <h3 class="card-title">Donations</h3>
                    <ul class="simple-list">
                        <li>
                            <div class="list-left">
                                <img src="./images/profile.png" alt="profile" class="profile-img">
                                <span>Swornima Maharjan</span>
                            </div>
                            <span>Rs. 670</span>
                        </li>
                        <li>
                            <div class="list-left">
                                <img src="./images/profile.png" alt="profile" class="profile-img">
                                <span>Slesha Kumari</span>
                            </div>
                            <span>Rs. 670</span>
                        </li>
                        <li>
                            <div class="list-left">
                                <img src="./images/profile.png" alt="profile" class="profile-img">
                                <span>Sulove Noko</span>
                            </div>
                            <span>Rs. 670</span>
                        </li>
                    </ul>
                </div>

                <!-- Payments -->
                <div class="card">
                    <h3 class="card-title">Payments</h3>
                    <ul class="simple-list">
                        <li>
                            <div class="list-left">
                                <img src="./images/profile.png" alt="profile" class="profile-img">
                                <span>Swoyam Maharjan</span>
                            </div>
                            <span>Rs. 6700</span>
                        </li>
                        <li>
                            <div class="list-left">
                                <img src="./images/profile.png" alt="profile" class="profile-img">
                                <span>Sulav Shrestha</span>
                            </div>
                            <span>Rs. 1500</span>
                        </li>
                        <li>
                            <div class="list-left">
                                <img src="./images/profile.png" alt="profile" class="profile-img">
                                <span>Aaki Shrestha</span>
                            </div>
                            <span>Rs. 400</span>
                        </li>
                    </ul>
                </div>

            </div>

        </div>

    </div>
</div>
</body>
</html>
