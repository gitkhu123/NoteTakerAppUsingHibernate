<!doctype html>
<html lang="en">
  <head>
    
    <%@include file="all_js_css.jsp" %>

	<link href="css/style.css" rel="stylesheet">
	
    <title>Note Taker : Home Page</title>
  </head>
  <body>
   
   <div class="container">
   		<%@include file="navbar.jsp" %>
   		<br>
   		<div class="card py-5">
   			<img alt="" src="img/pencil.png" class="img-fluid mx-auto" style="max-width: 400px">
   			<br>
   			<h1 class="text-center text-uppercase text-primary">Start Taking Your Notes</h1>
   			
   			<div class="container text-center">
   				<a href="add_notes.jsp"><button class="btn btn-outline-primary text-center" style="width: 200px;">Start here</button></a>
   			</div>
   			<br>
   		</div>
   </div>
   

  </body>
</html>