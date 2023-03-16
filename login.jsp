<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<body>
     <style>
         #a
         {
            width:800px;
            height: 400px;
            background-color: transparent;
            box-shadow:-2px 2px 5px black,2px -2px 8px black;
            margin-top: 160px;
            margin-left: 280px;
            padding-top: 100px;
         }
         #img
         {
            width: 400px;
            position: absolute;
            bottom: 300px;
            right: 360px;
            display: block;
         }
         #b
         {
            position: relative;
            right: 160px;
         }
         #login
         {
            width: 100px;
            height: 30px;
            background-color: rgb(155, 155, 213);
            color: white;
         }
         #login:hover
         {
           background-color: green;
           color: white;
         }
         #button
         {
            position: relative;
            left: 800px;
            bottom: 80px;
            border:none;
         }
         #button:hover
         {
            background-color:black;
            color:white;
         }
          #forget
         {
            position: relative;
            left: 290px;
            bottom: 120px;
            border:none;
         }
         #forget:hover
         {
            background-color:black;
            color:white;
         }
        
         #wrongCredientials
         {
          position: relative;
          bottom:215px;
          left:455px;
          color:red;
          visibility: hidden;
         }
     </style>
    <div id="a">
     <center><form id="b" action="LoginVerify.jsp">
        <label><h1>Gleamlub</h1></label><br>
        <input placeholder="User Id" required name="userid"><br><br>
        <input placeholder="password" type="password" name="password" required><br><br>
        <input type="checkbox">Remember me<br><br>
        <input id="login" type="submit" value="Login">
        
    </form></center>
    </div>
    <img id="img" src="image/laptopman.png" alt="laptop"> 
    <div>
    <button id="button" onclick="redirect()">Create a new Account</button>
    <button id="forget" onclick="forget()">Forget UserID/Password</button>
   
    <p id="wrongCredientials" >Wrong Credientials</p>
    <%
     
      String temp2 = (String)session.getAttribute("InvalidCredientials");
      if(temp2!=null)
      {
    	  %>
    	    <script>
    	    document.getElementById("wrongCredientials").style.visibility="visible";
    	    </script>
    	  <% 
    	  session.removeAttribute("InvalidCredientials");
      }
    %>
    <script>
       function forget()
       {
    	   window.location.href = "forgetUserId_Password.jsp"
       }
       function redirect()
       {
    	   window.location.href = "signup.jsp"
       }
    </script>
    </div>
</body>
</html>