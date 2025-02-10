package newpro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/getbyemails")
public class getbyemail  extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email=req.getParameter("email");
	try {
		PrintWriter pw=resp.getWriter();
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/swiggy", "root", "root");
		String sql="select * from login where email=?";
		PreparedStatement pmst=conn.prepareStatement(sql);
		pmst.setString(1,email);
		ResultSet rs=pmst.executeQuery();
		
	while(rs.next())
	{
		pw.println("YourDetails");
		pw.println("Id:"+rs.getInt("id"));
		pw.println("Name:"+rs.getString("name"));
		pw.println("Email:"+rs.getString("email"));
		pw.println("Password:"+rs.getString("password"));
	}
	} 
	catch (Exception e)
	{
		e.printStackTrace();
		
	}
}
}
