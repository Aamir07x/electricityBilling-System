<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team CodeBusters</title>
<link rel="stylesheet" href="style.css">

<script type = "text/javascript" lang = "javascript">
	<%@include file ="script.js" %>
</script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<!-- NavBar -->
	<!-- <nav class="navbar" style="background-color: #e3f2fd;"> -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary ">
		<nav class="navbar bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <img
					src="img/code busters logo.jpg" alt="Logo" width="30" height="24"
					class="d-inline-block align-text-top"> CODE BUSTERS
				</a>
			</div>
		</nav>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Contact
						Us</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> Services </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Generate
								Electricity Bill</a></li>
						<li><a class="dropdown-item" href="#">Calculate
								Electricity Bill</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Register Here</a></li>
					</ul>
			</ul>
			<a href="login.jsp"><button type="button"
					class="btn btn-outline-primary">Login</button></a> <a
				href="registration.jsp"><button type="button"
					class="btn btn-outline-secondary">Register</button></a>

		</div>
		</div>
	</nav>

	<!-- Hero Section (Crowsel) -->
	<div id="carouselExampleIndicators" class="carousel slide">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/fre-sonneveld-q6n8nIrDQHE-unsplash.jpg"
					class="d-block w-100" alt="..." height="400">
			</div>
			<div class="carousel-item">
				<img src="img/israel-palacio-ImcUkZ72oUs-unsplash.jpg"
					class="d-block w-100" alt="..." height="400">
			</div>
			<div class="carousel-item">
				<img src="img/marek-piwnicki-YJ8bq1AiwoM-unsplash.jpg"
					class="d-block w-100" alt="..." height="400">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- Key Feature CARDS-->
	<h1 style="text-align: center; padding-top: 60px;">Key Feature</h1>
	<div class="card-container">

		<div class="card" style="width: 18rem;">
			<img src="img/billing img.jpg" class="card-img-top" alt="...img">
			<div class="card-body">
				<p class="card-text">Automated Billing Calculate bills
					accurately and efficiently based on usage.</p>
				<button class="card-btn">Bill Calculate</button>
			</div>
		</div>

		<div class="card" style="width: 18rem;">
			<img src="img/Billing2 img.jpg" class="card-img-top" alt="...img1">
			<div class="card-body">
				<p class="card-text">Data Security Ensure secure storage of user
					data with encrypted login.</p>
				<button class="card-btn">Click</button>
			</div>
		</div>

		<div class="card" style="width: 18rem;">
			<img src="img/billing3.webp" class="card-img-top" alt="...img2">
			<div class="card-body">
				<p class="card-text">User-Friendly Interface Navigate through an
					easy-to-use interface for bill management.</p>
				<button class="card-btn">Bill Generate</button>
			</div>
		</div>

		<div class="card" style="width: 18rem;">
			<img src="img/Billing2 img.jpg" class="card-img-top" alt="...img3">
			<div class="card-body">
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<button class="card-btn">Learn more</button>
			</div>
		</div>

	</div>

	<br>
	<br>
	<br>
	<hr>
	<br>

	<!-- Bill Calculation -->
	<div class="form-container">

		<form action="" class="main-form">

			<h2>Bill Calculation</h2>
			<p>
				<label for="name">Name: </label> <input type="text" id="name"
					name="name" placeholder="Enter your full name" required> <span
					id="name-error" class="error-massage"></span>
			</p>

			<p>
				<label for="unit">Unit Consume: </label> <input type="number"
					id="unitConsumed" name="unitConsumed"
					placeholder="Total Unit consumed" required> <span
					id="name-error" class="error-massage"></span>
			</p>

			<p>
				<label for="address">Address: </label>
				<textarea name="address" id="address" rows="3" cols="65"
					placeholder="Enter your address"></textarea>
				<span id="address-error" class="error-massage"></span>
			</p>

			<p>
				<label for="country">Country:</label> <select name="country"
					id="country">
					<option value="SelectCountry">Select Country</option>
					<option value="INDIA">INDIA</option>
					<option value="USA">USA</option>
					<option value="UAE">UAE</option>
					<option value="OTHERS">OTHERS</option>
				</select> <span id="country-error" class="error-massage"></span>
			</p>

			<p>
				<input type="button" class="btn" id="calculate" value="calculate"
					name="calculate" onclick="return checkBill()"> <input
					type="reset" class="btn" id="reset" value="Reset" name="reset">
			</p>
			<div class="result">
				<input type="text" name="result" id="result"
					value="Total Payable Amount is:">
			</div>
		</form>


		<!-- Payment form-->
		<form action="" class="main-form">

			<h2>Bill Payment</h2>

			<p>
				<label for="consumerID">ConsumerID:</label> <input type="text"
					id="consumerID" name="consumerID"
					placeholder="Enter your consumerID"> <span
					id="consumerID-error" class="error-massage"></span>
			</p>

			<p>
				<label for="name">Name: </label> <input type="text" id="name"
					name="name" placeholder="Enter your full name" required> <span
					id="name-error" class="error-massage"></span>
			</p>

			<p>
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" placeholder="Enter your E-mail" required> <span
					id="email-error" class="error-massage"></span>
			</p>

			<p>
				<label for="contactNumber">Contact Number: </label> <input
					type="number" id="contactNumber" name="contactNumber"
					placeholder="Enter your contact Number" required> <span
					id="contactNumber-error" class="error-massage"></span>
			</p>

			<p>
				<label for="unitConsumed">unit Consumed:</label> <input
					type="number" id="unitConsumed" name="unitConsumed"
					placeholder="Total Unit Consumed" required> <span
					id="unitConsumed-error" class="error-massage"></span>
			</p>

			<p>
				<label for="address">Address: </label> <input type="text"
					id="address" name="address" placeholder="Enter your address">
				<span id="address-error" class="error-massage"></span>
			</p>

			<p>
				<label for="country">Country:</label> <select name="country"
					id="country">
					<option value="SelectCountry">Select Country</option>
					<option value="INDIA">INDIA</option>
					<option value="USA">USA</option>
					<option value="UAE">UAE</option>
					<option value="OTHERS">OTHERS</option>
				</select> <span id="country-error" class="error-massage"></span>
			</p>

			<p>
				<label for="amount">Amount:</label> <input type="number" id="amount"
					name="amount" placeholder="Enter amount to pay" required> <span
					id="amount-error" class="error-massage"></span>
			</p>

			<p>
				<input type="checkbox" id="agree" name="agree"> <label
					for="agree">I agree to that all informations are correct as
					per my knowledge.</label> <span id="agree-error" class="error-massage"></span>

			</p>

			<p>
				<input type="button" id="pay-btn" value="pay" name="pay-btn"
					onclick="return payCheck()">
			</p>
		</form>
	</div>
	<br>
	<hr>





	<!-- Footer -->
	<footer class="py-5">
		<div class="row">
			<div class="col-6 col-md-2 mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">About</a></li>
				</ul>
			</div>

			<div class="col-6 col-md-2 mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">About</a></li>
				</ul>
			</div>

			<!-- <div class="col-6 col-md-2 mb-3">
      <h5>Section</h5>
      <ul class="nav flex-column">
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
        <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
      </ul>
    </div> -->

			<div class="col-md-5 offset-md-1 mb-3">
				<form id="footer-form">
					<h5>Subscribe to our newsletter</h5>
					<p>Monthly digest of what's new and exciting from us.</p>
					<div class="d-flex flex-column flex-sm-row w-100 gap-2">
						<label for="newsletter1" class="visually-hidden">Email
							address</label> <input id="newsletter1" type="text" class="form-control"
							placeholder="Email address">
						<button class="btn btn-primary" type="button">Subscribe</button>
					</div>
				</form>
			</div>
		</div>

		<div
			class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
			<p>© 2024 CodeBusters, Inc. All rights reserved.</p>
			<ul class="list-unstyled d-flex">
				<li class="ms-3"><a class="link-body-emphasis" href="#"><img
						src="img/icons/twitter-x-line.svg" alt="twitter-x-line" class="bi"
						width="24" height="24"> <use xlink:href="#twitter"></use></img></a></li>
				<li class="ms-3"><a class="link-body-emphasis" href="#"><img
						src="img/icons/instagram-line.svg" alt="instagram" class="bi"
						width="24" height="24"> <use xlink:href="#instagram"></use></a></li>
				<li class="ms-3"><a class="link-body-emphasis" href="#"><img
						src="img/icons/facebook-circle-fill.svg" alt="facebook" class="bi"
						width="24" height="24"> <use xlink:href="#facebook"></use></a></li>
			</ul>
		</div>
	</footer>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script src="script.js"></script>

</body>
</html>