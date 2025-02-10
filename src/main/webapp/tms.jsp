<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style>
div
{
margin:10% 30%;
border:2px solid black;
width:25%;
height:35%;
padding:2% 3%;
}
h1
{
align-text:center;
padding-bottom: 5%
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
	<h1>Your Details</h1>
	<% 
	String email="anjali@gmail.com";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/swiggy", "root", "root");
	String sql="select * from login where email=? ";
	PreparedStatement pmst=conn.prepareStatement(sql);
	pmst.setString(1, email);
	ResultSet rs=pmst.executeQuery();
		
	while(rs.next())
	{
	
	%>
			<b>
					Id :<%=rs.getInt("id") %>
				<br>
					Name :<%=rs.getString("name") %>
				<br>
					Email :<%=rs.getString("email") %>
				<br>
					Password :<%=rs.getString("password") %></b>
				
	<% 
	}
}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	%>
		
</div>

</body>
</html>