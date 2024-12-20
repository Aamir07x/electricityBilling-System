<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<script type = "text/javascript" lang = "javascript">
	<%@include file ="script.js" %>
</script>

<style type="text/css">
@charset "UTF-8";

body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f5f5f5;
}

h2 {
	text-align: center;
	color: #333;
}

/* form styling for login/signup */
form {
	max-width: 600px;
	margin: 0% auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 1);
}

/* input field styling for login/signup */
input[type="text"], input[type="password"], input[type="email"], input[type="number"],
	select {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
	font-size: 16px;
}

/* select field styling */
select {
	width: 140px;
	padding: 10px;
	margin: 5px 0;
	box-sizing: border-box;
	border-radius: 5px;
	font-size: 16px;
	background-color: #fff;
	appearance: none;
}

/* input field styling on hover */
input[type="submit"], input[type="reset"], input[type="checkbox"] {
	background-color: #007;
	color: #fff;
	border: none;
	border-radius: 5px;
	padding: 10px 20px;
}

input[type="submit"]:hover, input[type="reset"]:hover, input[type="checkbox"]:hover
	{
	background-color: #0056b3;
}

/* error massage print styling */
.error-massage {
	color: red;
	font-size: 14px;
	margin-top: 5px;
}
</style>




</head>
<body>

	<form action="login.html" onsubmit="return validateForm()">

		<h2>Registration / Login</h2>
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
			<label for="userName">Username:</label> <input type="text"
				id="userName" name="userName" placeholder="Enter your userName">
			<span id="userName-error" class="error-massage"></span>
		</p>

		<p>
			<label for="password">Password:</label> <input type="password"
				id="password" name="password" placeholder="Enter your password"
				required> <span id="password-error" class="error-massage"></span>
		</p>

		<p>
			<label for="confirmPassword">Confirm Password:</label> <input
				type="password" id="confirmPassword" name="confirmPassword"
				placeholder="Re-enter your password" required> <span
				id="confirmPassword-error" class="error-massage"></span>
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
			<input type="checkbox" id="agree" name="agree"> <label
				for="agree">I agree that all informations are correct as per
				my knowledge.</label> <span id="agree-error" class="error-massage"></span>

		</p>

		<a href="login.jsp">Already Have an Account</a>

		<p>
			<input type="submit" class="btn" id="submit" value="submit"
				name="submit" onclick="return validateForm()"> <input
				type="reset" class="btn" id="reset" value="Reset" name="reset">
		</p>


	</form>


	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>