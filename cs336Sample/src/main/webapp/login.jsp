<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>

<%
String errorMessage = "";
if(request.getParameter("error") != null){
  errorMessage = "Invalid username or password. Please try again.";
}
%>
<form action="validateLogin.jsp" method="post">
  <div>
    <label for="username">Username:</label>
    <input type="text" id="username" name="username">
  </div>
  <div>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password">
  </div>
  <div>
    <input type="submit" value="Login">
  </div>
</form>

<% if(!errorMessage.equals("")){ %>
  <div>
    <p><%=errorMessage%></p>
  </div>
<% } %>

</body>
</html>
