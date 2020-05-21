<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
    String Name=request.getParameter("Name");
    String Email=request.getParameter("Email");
    String Phone=request.getParameter("Phone");
    String Address=request.getParameter("Address");
    String Comment=request.getParameter("Comment");
    
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
    	PreparedStatement ps=con.prepareStatement("insert into ------- values(?,?,?,?,?)");
    	
    	ps.setString(1,Name);
    	ps.setString(2,Email);
    	ps.setString(3,Phone);
    	ps.setString(4,Address);
    	ps.setString(5,Comment);
    	
    	ps.executeUpdate();
    	System.out.print("value added");
    	
    	Statement stmt=con.createStatement();
    	ResultSet rs=stmt.executeQuery("Select * form javaclass");
    	
    	while(rs.next())
    		
    		System.out.println(rs.getString(1)+" "+ rs.getString(2)+" "+ rs.getString(3)+" "+ rs.getString(4)+" "+rs.getString(5)+" ");
    
    }catch(Exception e){
    	System.out.println(e);
    }
    
%>
</body>
</html>