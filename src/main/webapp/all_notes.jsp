<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes : Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

    <div class="container">
        <%@include file="navbar.jsp"%>
        <br>
        <h1 class="text-uppercase">All Notes:</h1>
        
        <div class="row">
        
            <div class="col-12">
            
                <%
                 Session s = FactoryProvider.getFactory().openSession();
                 Query<Note> q = s.createQuery("from Note", Note.class);
                 List<Note> list = q.list();
                 
                 for(Note note : list){
                 %>
                <div class="card mt-3  margin-bottom: 10px;">
                    <img class="card-img-top p-4 " style="max-width:100px;" src="img/notes.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%= note.getTitle() %></h5>
                        <p class="card-text"><%= note.getContent() %></p>
                        <p > Last Update: <b class="card-date"> <%= note.getAddedDate()%> </b> </p>
                        <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
                    	<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
                    
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
