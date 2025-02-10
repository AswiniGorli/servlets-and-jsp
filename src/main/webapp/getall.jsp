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
*{

margin:5% 25%;

}

  table {
    border-collapse: collapse;
    border: 1px solid black;
  }
  th, td {
    border: 1px solid black; /* Add borders to table cells */
    padding: 8px; /* Add padding to cells */
  }


</style>

<meta charset="UTF-8">
<title>getall</title>
</head>
<body>

	<%--
<%@ %>-it is used for package importing,file importing and page integrations or connections
<% %>=used for writing codes
<%= %>=it is used for cv output
 comments--%>
<h1>All User Details</h1>
	
	<table >
		<thead >
			<tr>
				<th>id</th>
				<th>name</th>
				<th>email</th>
				<th>Password</th>
			</tr>
		</thead>

		<tbody><% 
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/swiggy", "root", "root");
	String sql="select * from login";
	PreparedStatement pmst=conn.prepareStatement(sql);
	ResultSet rs=pmst.executeQuery();
		
	while(rs.next())
	{
	
	%>
			<tr>
				<td>
					<%=rs.getInt("id") %>
				</td>
				<td>
					<%=rs.getString("name") %>
				</td>
				<td>
					<%=rs.getString("email") %>
				</td>
				<td>
					<%=rs.getString("password") %>
				</td>
			</tr>
	<% 
	}
}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	%>
		</tbody>

	</table>


</body>
</html>