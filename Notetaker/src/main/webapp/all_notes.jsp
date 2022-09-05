<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all_js_css.jsp"%>

<link href="css/style.css" rel="stylesheet">

<title>All Notes : Note Taker</title>
</head>

<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes :</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = factoryProvider.getfactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top mt-3 ml-3 mx-auto" src="img/pencil.png" style="max-width: 100px" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title px-4"><%= note.getTitle() %></h5>
						<p class="card-text px-4"><%=note.getContent() %></p>
						<p class="card-text px-4"><%=note.getAddedDate() %></p>
						<div class="text-center">
							<a href="Update.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
							<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>


	</div>



</body>
</html>