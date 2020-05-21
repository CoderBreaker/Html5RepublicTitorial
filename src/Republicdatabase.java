import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

@WebServlet("/Republicdatabase")
public class Republicdatabase extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
		PrintWriter pw=response.getWriter();
	    response.setContentType("html/text");
	    
	    String Name=request.getParameter("Name");
	    String Email=request.getParameter("Email");
	    String Phone=request.getParameter("Phone");
	    String Address=request.getParameter("Address");
	    String Comment=request.getParameter("Comment");


	    try{
	    	  
	    	  Class.forName("com.mysql.jdbc.Demo");
	    	  Connection con=DriverManager.getConnection("jdbc:mysql://loacl host:3306:3306/niit ","root ", "root");
	    	  PreparedStatement ps=con.prepareStatement("insert into javaclass value (?,?,?,?,?)");
	    	  
	    	  ps.setString(1,Name);
	    	  ps.setString(2,Email);
	    	  ps.setString(3,Phone);
	    	  ps.setString(4,Address);
	    	  ps.setString(5,Comment);
	    	  ps.executeUpdate();
	    	  pw.print("value added...");
	    	 
	    	 Statement stmt=con.createStatement();
	    	 Resultset rs=stmt.excutequery("Select * form javaclass");
	    	  while(rs.next())
	    		  
	    		System.out.println(rs.getString(1)+ " "+rs.getString(2)+ " " +rs.getString(3)+ " "+rs.getString(4)+ " " +rs.getString(5)+ " " );  
	    	  
	     }catch(Exception e){
	    	   System.out.println(e);
	     }	
	
	}

}