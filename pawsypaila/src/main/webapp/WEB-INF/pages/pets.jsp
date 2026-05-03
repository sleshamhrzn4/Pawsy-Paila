
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pets - Pawsy</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pets.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link href="https://fonts.googleapis.com/css2?family=Abhaya+Libre:wght@400;500;600;700;800&display=swap" rel="stylesheet">
</head>
<body> <%@ include file="/WEB-INF/pages/header.jsp" %>
	
    
    <section class="slider-section">
        <div class="slider-container" id="sliderContainer">

            
            <button class="arrow arrow-left" onclick="changeSlide(-1)">&#8249;</button>
            <button class="arrow arrow-right" onclick="changeSlide(1)">&#8250;</button>

            <div class="slides-track" id="slidesTrack">

                
                <div class="slide slide-1">
                    <div class="slide-text">
                        <div class="voucher-badge">
                        <img src="${pageContext.request.contextPath}/images/pets/voucher.png" alt="voucher" ></div>
                        <h2>Adopt a furball,<br>get a voucher haul!!!</h2>
                        <img src="${pageContext.request.contextPath}/images/pets/voucher_1000.png" alt="voucher_1000" style="width: 150px; height: auto ;  display: block; margin: 0 auto;" >
                        <p>Nrs. 1000 to spend on food,<br>toys and vet care.</p>
                        <div class="pet-food">
                        <img src="${pageContext.request.contextPath}/images/pets/pet_food.png" alt="pet_food"></div>
                    </div>
                    <div class="slide-image">
                       
                        <img src="${pageContext.request.contextPath}/images/pets/pets_slider1.png" alt="Cat with pet food">
                    </div>
                </div>

                
                <div class="slide slide-2">
                   
                    <img src="https://placehold.co/900x360/c9b99a/6b5a46?text=Woman+with+Dog+%26+Cat" alt="Woman with pets">
                    <div class="overlay-text">
                        <h2>Find a Lifetime<br>Loyalty</h2>
                        <p>Open your heart to a companion who will love you unconditionally.</p>
                    </div>
                </div>

                
                <div class="slide slide-3">
                    <div class="slide-image">
                        
                        <img src="https://placehold.co/420x360/d4c4a8/7a6a55?text=Dog+%26+Cat+with+Supplies" alt="Pets with supplies">
                    </div>
                    <div class="slide-text">
                        <h2>Holiday Special Offer!</h2>
                        <p>Adopt now and receive a complete pet care package!</p>
                        <img class="treats-badge"
                             src="https://placehold.co/80x80/d4a843/7a5c1a?text=Treats"
                             alt="Premium Dog Treats">
                    </div>
                </div>

            </div>
        </div>
        

        <%-- Dots --%>
        <div class="dots" id="dots">
            <div class="dot active" onclick="goToSlide(0)"></div>
            <div class="dot"        onclick="goToSlide(1)"></div>
            <div class="dot"        onclick="goToSlide(2)"></div>
        </div>
    </section>
    
    


<section class="pets-section">

    <div class="top-bar">
        <form action="${pageContext.request.contextPath}/PetServlet" method="get">
            <div class="search-box">
                <svg width="16" height="16" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
                    <circle cx="11" cy="11" r="8"/>
                    <line x1="21" y1="21" x2="16.65" y2="16.65"/>
                </svg>
                <input type="text" name="search" placeholder="Search" value="${param.search}">
            </div>
            <input type="hidden" name="type" value="${param.type}">
        </form>

        <div class="filter-btns">
            <a href="${pageContext.request.contextPath}/PetServlet?type=all">
                <button class="${empty param.type || param.type == 'all' ? 'active' : ''}">All</button>
            </a>
            <a href="${pageContext.request.contextPath}/PetServlet?type=dog">
                <button class="${param.type == 'dog' ? 'active' : ''}">Dog</button>
            </a>
            <a href="${pageContext.request.contextPath}/PetServlet?type=cat">
                <button class="${param.type == 'cat' ? 'active' : ''}">Cat</button>
            </a>
        </div>
    </div>

    <h2 class="section-title">OUR PETS</h2>

		    <div class="pets-grid">
		        <c:forEach var="pet" items="${petList}">
		            <div class="pet-card"
		     data-type="${pet.petType}"
		     data-name="${pet.petName}"
		     onclick="openModal(
		        '${pet.petName}',
		        '${pet.petType}',
		        '${pet.breed}',
		        '${pet.petDesc}',
		        '${pageContext.request.contextPath}/images/pets/${pet.petId}.jpg')">
		    <div class="card-image">
		        <img src="${pageContext.request.contextPath}/images/pets/${pet.petId}.jpg"
		             alt="${pet.petName}">
		    </div>
		    <div class="card-body">
		        <h3>${pet.petName}</h3>
		        <div class="age">${pet.petType}</div>
		        <p>${pet.petDesc}</p>
		        <button class="btn-meet">Meet Now</button>
		    </div>
		</div>
        </c:forEach>
    </div>

</section>


<!-- Pets with Special Needs Section -->
<section class="pets-section special-needs-section">

    <h2 class="section-title">PETS WITH SPECIAL NEEDS</h2>

    <div class="pets-grid">
        <c:forEach var="pet" items="${specialPetList}">
            <div class="pet-card"
                 data-type="${pet.petType}"
                 data-name="${pet.petName}"
                 onclick="openModal(
                    '${pet.petName}',
                    '${pet.petType}',
                    '${pet.breed}',
                    '${pet.petDesc}',
                    '${pageContext.request.contextPath}/images/pets/${pet.petId}.jpg')">
                <div class="card-image">
                    <img src="${pageContext.request.contextPath}/images/pets/${pet.petId}.jpg"
                         alt="${pet.petName}">
                </div>
                <div class="card-body">
                    <h3>${pet.petName}</h3>
                    <div class="age">${pet.petType}</div>
                    <p>${pet.petDesc}</p>
                    <button class="btn-meet">Meet Now</button>
                </div>
            </div>
        </c:forEach>
    </div>

</section>

<div class="adoption-process">
<h2 class="section-title">ADOPTION PROCESS</h2>
<img src="${pageContext.request.contextPath}/images/pets/adoption_process.png"
		             alt="adoption process">
</div>
<script>
        var currentIndex = 0;
        var totalSlides  = 3;
        var autoPlayInterval;

        function updateSlider() {
            document.getElementById('slidesTrack').style.transform =
                'translateX(-' + (currentIndex * 100) + '%)';
            var dots = document.querySelectorAll('.dot');
            dots.forEach(function(d, i) {
                d.classList.toggle('active', i === currentIndex);
            });
        }

        function changeSlide(dir) {
            currentIndex = (currentIndex + dir + totalSlides) % totalSlides;
            updateSlider();
            resetAutoPlay();
        }

        function goToSlide(index) {
            currentIndex = index;
            updateSlider();
            resetAutoPlay();
        }

        function resetAutoPlay() {
            clearInterval(autoPlayInterval);
            autoPlayInterval = setInterval(function() { changeSlide(1); }, 4000);
        }

        autoPlayInterval = setInterval(function() { changeSlide(1); }, 4000);
    </script>
</body>


</html>