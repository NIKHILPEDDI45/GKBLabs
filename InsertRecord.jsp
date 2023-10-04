<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Records into user Table</title>
</head>
<body>

<%
	String t = request.getParameter("id");
	int id = Integer.parseInt(t);
	String name = request.getParameter("name");
	String email = request.getParameter("mail");
	String temp = request.getParameter("age");
	int age = Integer.parseInt(temp);
	String dob = request.getParameter("dob");
	
	
	String url = "jdbc:mysql://localhost:3306?user=root&password=12345";
	String query = "insert into tejm31_database.user_table values(?,?,?,?,?)";
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection(url);
	PreparedStatement ps = connection.prepareStatement(query);
	ps.setInt(1,id);
	ps.setString(2,name);
	ps.setString(3,email);
	ps.setInt(4,age);
	ps.setString(5, dob);
	int result = ps.executeUpdate();
	
	if(result>0)
	{
	%>
	
	<h1 style="color:green;"><%="Record inserted successfully...."%></h1>
	<% 
	}
	else
	{
		%>	
		<h1 style="color:red;"><%="Invalid Credentials.."%></h1> 
	
	 <% 	
	}
		connection.close();
%>
</body>
</html>