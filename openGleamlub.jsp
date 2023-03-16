<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
     <style>
      *{
    padding: 0px;
    margin: 0px;
}
#mainlist
{
    display: flex;
    list-style: none;
}
#navbar
{
    width: 100%;
    height: 60px;
    background-color: white;
    box-shadow: 2px 2px 2px green,2px -2px 2px green;
}
#brand
{
 position: relative;
 left:20px;
 top:5px;
 text-shadow: 1px 1px 20px  rgb(255, 138, 49),-1px 1px 20px  rgb(255, 138, 49);
 color:black;
}
.mli
{
    text-transform: uppercase;
    position:relative;
    left:380px;
    width: 150px;
    height: 50px;
    font-size: 28px;
    text-align: center;
    padding-top: 10px;
    background-color: white;
    color:black;
}
.mli:hover
    {
        background-color: rgb(56, 53, 53);
        color:white;
    }
    a{
        text-decoration: none;
      
     }
     #note
     {
      position:relative;
      top:10px;
      width: 100%;
      height: 500px;
      background-color:  rgb(153, 233, 156);
      box-shadow: 2px 2px 2px green,2px -2px 2px green;
     }
     #veg
     {
      width:600px;
      position: relative;
      top:30px;
     }
     #quote
     {
      position: relative;
      left:370px;
      bottom: 300px;
      text-align: center;
      color:rgb(64,52, 42);
     }
     #try
     {
      position: relative;
      left:1000px;
      bottom: 200px;
      width:170px;
      height:30px;
     }
     #why
     {
      position: relative;
      text-align: center;
     }
     #key1
     {
       position: relative;
       top:30px;
       height:150px;
       width:300px;
       left:350px;
       background-color: white;
       text-align: center;
       border: 1px solid black;
       box-shadow: 2px 2px 5px black;
     }
      #key2
     {
       position: relative;
       top:50px;
       height:150px;
       width:300px;
       left:350px;
       background-color: white;
       text-align: center;
       border: 1px solid black;
       box-shadow: 2px -2px 5px black;
     }
      #key3
     {
       position: relative;
       bottom:270px;
       height:150px;
       width:300px;
       left:700px;
       background-color: white;
       text-align: center;
        border: 1px solid black;
       box-shadow: -2px 2px 5px black;
     }
      #key4
     {
       position: relative;
       bottom:250px;
       height:150px;
       width:300px;
       left:700px;
       background-color:white;
       text-align: center;
        border: 1px solid black;
       box-shadow: -2px -2px 5px black;
     }
     #key1:hover,#key2:hover,#key3:hover,#key4:hover
     {
       background-color: rgb(220, 220, 225);
     }
     </style>
</head>
<body>
    <div id="navbar">
    <ul id="mainlist">
        <li id="brand"><h1 style="font-family: 'Solitreo', cursive;">Gleamlub»<h1></h1></li>
        <a href="openGleamlub.jsp"><li class="mli"><pre>Home</pre></li></a>
        <a href="Cart.jsp"><li class="mli"><pre>Cart </pre></li></a>
        <a href="products.jsp"><li class="mli"><pre>Products  </pre></li></a>
        <a href="login.jsp"><li class="mli"><pre>Logout</pre></li></a>
    </ul>
  </div>
  <div id="note">
  <img id="veg" src="image/vegitables.png">
  <h1 id="quote">"Eat your vegetables, they're good for you!"</h1><br>
  <h4 id="quote">emphasizes the health benefits of eating vegetables</h4><br>
  <h4 id="quote">Try our fresh,locally sourced vegetables</h4><br>
  <h3 id="quote">good for you and the environment!"</h3>
  <a href="products.jsp" ><button id="try">Try Our Products</button></a>
  <h1 id="why" >Why Gleamlub?</h1>
  
  <div id="key1"><h2>Locally sourced</h2><br> <p>If your vegetables are locally grown, you can emphasize that they are fresh and support the local community.</p></div>

  <div id="key2"><h2>Variety</h2> <br><p>If you offer a wide range of vegetables, you can highlight the variety of flavors and nutritional benefits that customers can enjoy.</p></div>

  <div id="key3"><h2>Organic</h2> <br><p >If your vegetables are organic, you can promote the health and environmental benefits of organic farming.</p></div>

  <div id="key4"><h2>Quality</h2> <br><p > If your vegetables are of particularly high quality, you can emphasize the care and attention that goes into producing them.</p>
  </div>
</body>
</html>