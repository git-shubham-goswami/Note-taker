<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.helper.*, com.entities.*, org.hibernate.*, com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker : Edit Page</title>
<%@include file="all_js_css.jsp" %>
</head>

<body>

 <div class="container">
      <%@include file="navbar.jsp" %>
		<h1>Edit Your Note</h1>
		<br>
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id"));
		
		Session s = FactoryProvider.getFactory().openSession();
		Note n1 = (Note)s.get(Note.class, noteId);
		
		%>
		
		<!-- this is add form  -->
		<form action="UpdateServlet" method="post">
		
		<input value="<%= n1.getId() %>" name="noteId" type="hidden" />
		
			<div class="form-group">
				<label for="title">Note title</label> 
				<input
				    required
				    name="title"
					type="text" 
					class="form-control" 
					id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter here"
					value="<%= n1.getTitle() %>" /> 
			</div>
			
			<div class="form-group">
				<label for="content">Note Content</label> 
				<textarea 
				     required
				     name="content"
				     id="content" 
				     placeholder="Enter your content here"
				     class="form-control"
				     style="height:300px;"><%= n1.getContent() %>
				     
				     </textarea> 
				     
			</div>
			
			<div class="container text-center">
			  <button 
			  type="submit" 
			  class="btn btn-success">Save your note</button>
			</div>	
		</form>
		
		
   
   </div>

</body>
</html>