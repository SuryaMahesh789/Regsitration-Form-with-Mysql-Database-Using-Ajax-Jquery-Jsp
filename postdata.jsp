
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
  

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String contact = request.getParameter("contact");
    String email = request.getParameter("email");  

    
Connection con;
PreparedStatement pst;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver");

con=DriverManager.getConnection("jdbc:mysql://localhost/school","root","");


pst=con.prepareStatement("insert into formdata(name,email,password,contact)values(?,?,?,?)");

pst.setString(1,name);
pst.setString(2,email);
pst.setString(3,password);
pst.setString(4,contact);

pst.executeUpdate();


%>

   

