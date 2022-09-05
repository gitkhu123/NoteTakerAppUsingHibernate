<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all_js_css.jsp"%>

<link href="css/style.css" rel="stylesheet">

<title>Add Notes</title>
</head>

<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	<br>

	<div class="container">
		<h1 class="text-center">Add Notes</h1>
		<form action="savenote" method="post">
			<div class="form-group">
				<label for="title">Title</label> 
				<input name="title" required type="text" class="form-control" id="title" placeholder="Enter title">
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea name="content" required id="content" placeholder="Enter your content here" class="form-control" style="height:300px";"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" style="width: 200px; font-size: 23px;" class="btn text-light purple">Add</button>
			</div>
		</form>
	</div>

</body>
</html>