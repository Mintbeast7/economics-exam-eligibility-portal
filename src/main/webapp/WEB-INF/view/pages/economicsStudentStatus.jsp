<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam Eligibility Result</title>

<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #f2f4f7;
}

.header {
	background-color: #2c3e50;
	color: white;
	padding: 15px;
	text-align: center;
	font-size: 20px;
	font-weight: bold;
}

.container {
	width: 400px;
	margin: 70px auto;
	background: white;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h3 {
	margin-bottom: 20px;
	color: #333;
}

.roll {
	font-size: 16px;
	margin-bottom: 15px;
	color: #555;
}

.status {
	font-size: 18px;
	font-weight: bold;
	padding: 12px;
	border-radius: 5px;
}

.eligible {
	color: #155724;
	background-color: #d4edda;
}

.not-eligible {
	color: #721c24;
	background-color: #f8d7da;
}

.back {
	margin-top: 25px;
}

.back a {
	text-decoration: none;
	color: white;
	background-color: #1a73e8;
	padding: 10px 18px;
	border-radius: 4px;
	font-size: 14px;
}

.back a:hover {
	background-color: #1558b0;
}

footer {
	text-align: center;
	margin-top: 30px;
	font-size: 13px;
	color: #777;
}
</style>
</head>

<body>

	<div class="header">Economics Department – Student Portal</div>

	<div class="container">
		<h3>Exam Eligibility Result</h3>

		<div class="roll">
			Roll Number: <strong>${rollNo}</strong>
		</div>

		<!-- Eligibility message -->
		<div
			class="status
        ${eligibilityStatus == 'Eligible for Final Examination' ? 'eligible' : 'not-eligible'}">
			${eligibilityStatus}</div>

		<div class="back">
			<a href="${pageContext.request.contextPath}/">Check Another
				Student</a>
		</div>
	</div>

	<footer> © 2026 Economics Department | Student Self-Service </footer>

</body>
</html>


