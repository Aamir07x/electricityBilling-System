<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

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



	<form action="index.html" onsubmit="return loginCheck()">
		<h2>Login / Registration</h2>

		<p>
			<label for="email">Email</label> <input type="email" id="email"
				name="email" placeholder="Enter your email"> <span
				id="email-error" class="error-massage"></span>
		</p>

		<p>
			<label for="password">Password</label> <input type="password"
				id="password" name="password" placeholder="Enter your password">
			<span id="password-error" class="error-massage"></span>
		</p>

		<a href="registration.jsp">New User?</a>

		<p>
			<input type="submit" id="submit" value="submit" name="submit"
				onclick="return loginCheck()"> <input type="reset"
				id="reset" value="Reset" name="reset">
		</p>
	</form>



	<script src="script.js"></script>


</body>
</html>