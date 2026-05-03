<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product page</title>
 <link rel="stylesheet" href="./css/Product.css">
</head>
<body>
<nav>
    <div class="logo">
       <img src="./images/logo.png" alt="Pawsy Logo" height="40">
    </div>

    <ul class="nav-links">
        <li><a href="${pageContext.request.contextPath}/home">Pets</a></li>
        <li><a href="${pageContext.request.contextPath}/shop">Shop</a></li>
        <li><a href="${pageContext.request.contextPath}/community">Community</a></li>
        <li><a href="${pageContext.request.contextPath}/about">About</a></li>
        <li><a href="${pageContext.request.contextPath}/donate">Donate</a></li>
    </ul>

    <c:choose>
        <c:when test="${not empty sessionScope.user}">
            <a href="${pageContext.request.contextPath}/logout">
                <button class="nav-btn">Logout</button>
            </a>
        </c:when>
        <c:otherwise>
            <a href="${pageContext.request.contextPath}/login">
                <button class="nav-btn">Log In</button>
            </a>
        </c:otherwise>
    </c:choose>
</nav>

<!-- HERO -->
<section class="hero">

    <div class="hero-text">
        <h1>BEST PET<br><span>PRODUCTS</span></h1>
        <a href="${pageContext.request.contextPath}/shop">
            <button class="hero-btn">Shop Now</button>
        </a>
    </div>

    <div class="hero-image">
        <img src="./images/dog_cat(HS).png" alt="Pets">
    </div>

</section>

<!-- CATEGORIES -->
<section class="categories">

    <div class="section-title">
        <h2>Shop by <span>Category</span></h2>
    </div>

    <div class="category-grid">

        <div class="category-card">
            <img src="./images/petbed.png" alt="PetBeds">
            <p>Pet Beds</p>
            <a href="${pageContext.request.contextPath}/shop?category=beds">
                <button class="add-btn">Add to cart</button>
            </a>
        </div>

        <div class="category-card">
            <img src="./images/petfood.png" alt="PetFood">
            <p>Food</p>
            <a href="${pageContext.request.contextPath}/shop?category=food">
                <button class="add-btn">Add to cart</button>
            </a>
        </div>

        <div class="category-card">
            <img src="./images/clothes.png" alt="Clothes">
            <p>Clothes</p>
            <a href="${pageContext.request.contextPath}/shop?category=clothes">
                <button class="add-btn">Add to cart</button>
            </a>
        </div>

        <div class="category-card">
            <img src="./images/toys.png" alt="PetToys">
            <p>Toys</p>
            <a href="${pageContext.request.contextPath}/shop?category=toys">
                <button class="add-btn">Add to cart</button>
            </a>
        </div>

        <div class="category-card">
            <img src="./images/Gromming.png" alt="Gromming">
            <p>Grooming</p>
            <a href="${pageContext.request.contextPath}/shop?category=grooming">
                <button class="add-btn">Add to cart</button>
            </a>
        </div>

    </div>

</section>

<!-- BEST SELLERS -->
<section class="bestsellers">

    <div class="section-title">
        <h2>Our <span>Best Sellers</span></h2>
    </div>

    <div class="product-grid">

        <div class="product-card">
            <img src="./images/BestSeller.1.png" alt="">
            <h3>Fluffy Bed</h3>
            <p class="price">Rs. 1,500</p>
            <a href="${pageContext.request.contextPath}/addToCart?productId=1">
                <button class="add-btn">Add to Cart</button>
            </a>
        </div>

        <div class="product-card">
            <img src="./images/BestSeller.2.png" alt="">
            <h3>Lickable Treat</h3>
            <p class="price">Rs. 1,100</p>
            <a href="${pageContext.request.contextPath}/addToCart?productId=2">
                <button class="add-btn">Add to Cart</button>
            </a>
        </div>

        <div class="product-card">
            <img src="./images/BestSeller.3.png" alt="">
            <h3>Berry Cat House</h3>
            <p class="price">Rs. 2,200</p>
            <a href="${pageContext.request.contextPath}/addToCart?productId=3">
                <button class="add-btn">Add to Cart</button>
            </a>
        </div>

    </div>

</section>

<!-- SPECIAL OFFER -->
<section class="special-offer">

    <div class="offer-text">
        <p>!!Special Offer!!</p>
        <h2>35% OFF</h2>
        <h3>ON ALL PET PRODUCTS</h3>
        <a href="${pageContext.request.contextPath}/shop">
            <button class="hero-btn">Shop Now</button>
        </a>
    </div>

 <div class="offer-image">
        <img src="./images/Footer(RS).png" alt="">
    </div>
    <div class="offer-image">
        <img src="./images/Footer(LS).png" alt="">
    </div>

</section>

<!-- FOOTER -->
<footer>

    <div class="footer-top">

        <div class="footer-brand">
            <img src="./images/logo.png" alt="logo" height="40">
            <p>Your one-stop shop for pet needs.</p>
        </div>

        <div class="footer-col">
            <h4>Quick Links</h4>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Shop</a></li>
            </ul>
        </div>

        <div class="footer-col">
            <h4>Contact</h4>
            <ul>
                <li>Kathmandu, Nepal</li>
                <li>info@pawsypaila.com</li>
            </ul>
        </div>

        <div class="footer-col">
            <h4>Newsletter</h4>
            <input type="email" placeholder="Your email">
        </div>

    </div>

    <div class="footer-bottom">
        <p>&copy; 2026 PawsyPaila</p>
    </div>

</footer>


</body>
</html>