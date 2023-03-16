<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <%
      String userID = (String)request.getParameter("userid");
      String passWord = (String)request.getParameter("password");
      String url = "jdbc:mysql://localhost:3306?user=root&password=Pass@0198";
 	  String query1 = "select * from projects1.gleamlub where userid=?";
 	  String query2 = "select * from projects1.gleamlub where userid=? and password=?";
      Class.forName("com.mysql.jdbc.Driver");
      Connection connection = DriverManager.getConnection(url);
      PreparedStatement ps1 = connection.prepareStatement(query1);
      ps1.setString(1, userID);
      PreparedStatement ps2 = connection.prepareStatement(query2);
      ps2.setString(1, userID);
      ps2.setString(2, passWord);
      ResultSet rs1 = ps1.executeQuery();
      ResultSet rs2 = ps2.executeQuery();
     
      if(rs1.next()&&rs2.next())
      {
    	  RequestDispatcher dispatcher1 = request.getRequestDispatcher("openGleamlub.jsp");
    	  dispatcher1.include(request, response);
      }
      else
      {
    	  session.setAttribute("InvalidCredientials","InvalidCredientials");
    	  RequestDispatcher dispatcher2 = request.getRequestDispatcher("login.jsp");
    	  dispatcher2.include(request, response);
      }
      connection.close();
     %>
</body>
</html>