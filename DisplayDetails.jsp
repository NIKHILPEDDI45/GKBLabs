<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Details in Table format</title>
</head>
<body>
<%

%>	
<h2 style="color:red;"><%="Displaying user's details in the form of table"%></h2> 

<% 	
	// Java code to connect with data base
	
	String url ="jdbc:mysql://localhost:3306?user=root&password=12345";
	String query = "select * from tejm31_database.user_table";
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection(url);
	Statement st = connection.createStatement();
	ResultSet rs = st.executeQuery(query);
	
	if(rs.last())
	{
		rs.beforeFirst();
	
%>

	<table border="2" cellpadding="7" cellspacing="2">
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email id</th>
		<th>Age</th>
		<th>Date Of Birth</th>
		</tr>
		
	<% 
		while(rs.next())
		{
			
			%>
		
		
		<tr>
		<td><%=rs.getInt(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getInt(4) %></td>
		<td><%=rs.getString(5) %></td>
		</tr>
	<%
		}
	%>
	</table>
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