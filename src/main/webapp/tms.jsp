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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	
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
			
					<%=rs.getInt("id") %>
				
					<%=rs.getString("name") %>
				
					<%=rs.getString("email") %>
				
					<%=rs.getString("password") %>
				
	<% 
	}
}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	%>
		


</body>
</html>