<%@page import="com.entities.Note"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	
	 <%@include file="all_js_css.jsp" %>

	<link href="css/style.css" rel="stylesheet">
	
	<title>Update Page : Note Taker</title>
</head>

<body>
	<div class="container">
   		<%@include file="navbar.jsp" %>
   </div>
   
   <%
   		int noteid = Integer.parseInt(request.getParameter("note_id").trim());
   		Session s = factoryProvider.getfactory().openSession();
   		Note note =(Note)s.get(Note.class, noteid); 
   %>
   
   <div class="container">
		<h1 class="text-center">Edit Notes</h1>
		<form action="UpdateServlet" method="post">
			<input type="hidden" name="noteid" value="<%=note.getId()%>">
			<div class="form-group">
				<label for="title">Title</label> 
				<input name="title" required type="text" class="form-control" id="title" placeholder="Enter title" value="<%= note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Content</label>
				<textarea name="content" required id="content" placeholder="Enter your content here" class="form-control" style="height:300px";"><%=note.getContent() %></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" style="width: 200px; font-size: 23px;" class="btn text-light purple">Save</button>
			</div>
		</form>
	</div>
   
</body>
</html>