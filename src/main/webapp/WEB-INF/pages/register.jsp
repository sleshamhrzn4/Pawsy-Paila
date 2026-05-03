<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Pawsy Paila</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/register.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Georgia", serif;
    }

    body {
      height: 100vh;
    }

    /* MAIN LAYOUT */
    .container {
      display: flex;
      height: 100vh;
    }

    /* LEFT SIDE */
    .left {
      width: 50%;
      background: #7999A8;
      position: relative;
      overflow: hidden;
    }

    /* pawprint pattern */
    .overlay {
      position: absolute;
      inset: 0;
      background-image: url("paw.png");
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      opacity: 100%;
      pointer-events: none;
    }

    /* text content */
    .left-content {
      position: relative;
      z-index: 2;
      padding: 80px;
      color: #FAF7F2;
    }

    .left h1 {
      font-size: 64px;
      line-height: 1.2;
      margin-bottom: 40px;
    }

    .left p {
      font-size: 22px;
      line-height: 1.6;
    }

    /* cat image */
    .cat {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 180px;
      z-index: 2;
    }

    .right {
	  width: 50%;
	  background: #FAF7F2;
	  display: flex;
	  flex-direction: column;
	  justify-content: flex-start;
	  padding: 30px 60px;
	}

    .top-bar {
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  gap: 12px;
	  margin: 10px 0 20px 0;
	  width: 100%;
	}

    .top-bar span {
      font-size: 16px;
    }

    .login-btn {
      padding: 8px 18px;
      border: 1px solid #F6A563;
      background: transparent;
      color: #F6A563;
      border-radius: 20px;
      cursor: pointer;
    }

    /* FORM */
    .form-container {
	  max-width: 480px;
	  margin: auto;
	  text-align: center;
	}

    .form-container h4 {
	  font-size: 18px;
	  margin-bottom: 25px;
	}

    /* inputs */
    input {
	  width: 100%;
	  padding: 12px;
	  margin-bottom: 18px;
	  border: 1px solid #ddd;
	  border-radius: 12px;
	  background: #FAF7F2;
	  font-size: 14px;
	}

    /* signup button */
    .signup-btn {
      margin-top: 5px;
      padding: 12px 30px;
      border: none;
      background: #F6A563;
      color: FAF7F2;
      border-radius: 24px;
      font-size: 16px;
      cursor: pointer;
    }

    /* terms text */
    .terms {
      margin-top: 15px;
      font-size: 11px;
      color: #444;
    }
    .profile-upload-section {
	  margin-bottom: 20px;
	}
	
	.profile-circle {
	  display: inline-block;
	  width: 120px;
	  height: 120px;
	  border-radius: 50%;
	  overflow: hidden;
	  cursor: pointer;
	  border: 2px solid #ddd;
	}
	
	.profile-circle img {
	  width: 100%;
	  height: 100%;
	  object-fit: cover;
	}
  </style>
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
    <span>Already Have an Account?</span>
    <button class="login-btn">Log In</button>
  </div>

  <div class="form-container">
    <h4>Register to adopt, shop, or connect with our community</h4>
	<form action="${pageContext.request.contextPath}/register" method="post" enctype="multipart/form-data">
	    <!-- Profile Image -->
	    <div class="profile-upload-section">
		  <label for="profileImage" class="profile-circle">
		    <img id="imagePreview" src="#" alt="Preview">
		  </label>
		  <input type="file" id="profileImage" name="profileImage" accept="image/*" onchange="previewFile()" hidden>
		</div>
      <input type="text" name="fullName" placeholder="Full Name">
      <input type="text" name="phone" placeholder="Phone Number">
      <input type="email" name="email" placeholder="Email Address">
      <input type="password" name="password" placeholder="Password">

      <button type="submit" class="signup-btn">Sign Up</button>
    </form>

    <p class="terms">
      By signing up, you agree to our Terms and Privacy Policy
    </p>
  </div>

</div>

</div>

</body>
</html>