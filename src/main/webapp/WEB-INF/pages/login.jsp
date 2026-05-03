<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Pawsy Paila</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body>

<div class="container">

  <!-- LEFT SIDE -->
  <div class="left">
    <div class="overlay"></div>

    <div class="left-content">
      <h1>Welcome to<br> Pawsy Paila!</h1>

      <p>
        Welcome Back! Let's<br>
        continue your journey to find<br>
        your perfect companion.
      </p>
    </div>

    <img src="${pageContext.request.contextPath}/images/authentication/hicat.png" class="cat" alt="cat">
  </div>


  <!-- RIGHT SIDE -->
  <div class="right">

    <div class="top-bar">
      <span>Do Not Have an Account?</span>
      <button class="login-btn">Sign Up</button>
    </div>

    <div class="form-container">
      <h4>Log In to adopt, shop, or connect with our community</h4>

      
      <input type="email" placeholder="Email Address">
      <input type="password" placeholder="Password">

      <button class="signup-btn">Log in</button>

      <p class="terms">
        By logging in, you agree to our Terms & Privacy Policy
      </p>
    </div>

  </div>

</div>

</body>
</html>