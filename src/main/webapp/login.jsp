<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
div
{
margin:10% 35%;
border:2px solid black;
padding:1% 5%;
}
h1
{
text-align: center;
}
input {

margin:0% 1% 5% ;
padding:2%;
}
button
{
background:#5486eb;
margin:1% 5%;
border-radius: 5%;
width:100px;
height:40px;
}
</style>

<meta charset="UTF-8">
<title>getbyemail</title>
</head>
<body>
<div>
<form action="login" method="post">
<h1>SignUp</h1>
<h3>User Name:</h3>
        <input type="text" name="username" placeholder="enter username"><br>
        <h3>Email:</h3>
        <input type="email" name="email" placeholder="enter email"><br>
        <h3>Password:</h3>
        <input type="password" name="password" placeholder="enter password"><br>
       
        <button type="submit">submit</button>
    </form>
   </div>
</body>
</html>