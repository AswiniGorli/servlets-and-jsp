<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
a
{
text-decoration: none;
color:black;
}


nav{
        display: flex;
        background-color: rgb(3, 104, 111);
        height: 150px;
        width: 100%;
        
    }
    nav .navbar{
        display: flex;
        justify-content: space-between;
       margin:0%   1% ;
    }
 
    nav .navbar button {
       
        font-weight: bolder;
          width: 290px;
          height: 70px;
          border: 1px solid black;
          border-radius: 25px;
          box-shadow: 15px 20px 15px rgb(66, 62, 62);
          background-color: rgb(101, 164, 169);
          margin: 2% 5%  ;
      }

    
    nav .action{
        display: flex;
        padding: 1%;
    }
    img
    { 
        
        width:99%;
    }
    

iframe
{
    margin:2% 10%;
}
.rooms 
{
   display: flex;
   width: 50%;
   margin: 2% 15%;
   gap: 27%;
   
}
.rooms img{
    border-radius: 5%;
    height: 350px;
    width: 350px;
}
.rooms .girls
{
    border-radius: 5%;
    background-color: rgb(168, 249, 249);
    border: 8px solid  rgb(168, 249, 249);
}
.rooms .boys button {
       
        font-weight: bolder;
          width: 200px;
          height: 70px;
          border: 1px solid black;
          border-radius: 25px;
          box-shadow: 15px 20px 15px rgb(66, 62, 62);
          background-color: rgb(101, 164, 169);
          margin: 2% 20% 7%;
      }

.rooms .boys
{
    border-radius: 5%;
    background-color: rgb(168, 249, 249);
    border: 8px solid  rgb(168, 249, 249);
}
.rooms .girls button {
       
        font-weight: bolder;
          width: 200px;
          height: 70px;
          border: 1px solid black;
          border-radius: 25px;
          box-shadow: 15px 20px 15px rgb(66, 62, 62);
          background-color: rgb(101, 164, 169);
          margin: 2% 20% 7%;
      }


  .logo  h1
    {
color: white;
font-size: 3rem;
padding :0% 1% 1% ;
    }
    footer{
        padding: 50px 4% 10px ;
        color: #f8f3f3;
        background-color: #fff6f6;
    }
    footer h1{
        font-size: 1.2rem;
        font-weight: 500;
        font-family: Arial, Helvetica, sans-serif;
        margin: 0 0 50px 0;
        color: #000000;
    }
    footer .row{
        display: flex;
        align-items: start;
        padding: 10px 0px;
    }
    footer .row .col
    {
        margin: 10px 50px;
    }
    footer .row .col a
    {
        text-decoration: none;
        color: #666;
        font-size: 0.8rem;
        padding: 8px;
        display: block;
    }
    

</style>
<meta charset="UTF-8">
<title>home page</title>
</head>
<body>
    <nav>
        <div class="navbar">
            
            <div class="action">
                
<button><a href="login.jsp">Create new user</a></button>



<button><a href="getall.jsp">Get ALL user</a></button>

<button><a href="delete.jsp">Delete user</a></button>

<button><a href="update.jsp">Edit user</a></button>
                
  <button><a href="getbyemail.jsp">Log in</a></button>       
           </div>
        </div>
        </nav>
        <div>
        <h1>VK GYM</h1>
   <img src="https://www.fitness-world.in/wp-content/uploads/2022/01/Planning-to-Install-a-Gym-in-your-Society-Banner-1200x620.jpg" class="d-block w-100" alt="...">
     </div>
    <footer>
        <h1>Questions? Call 000-800-919-1694</h1>
        <div class="row">
            <div class="col">
                <a href="">FAQ</a>
                <a href="">Investor Relations</a>
                <a href="">Privacy</a>
                <a href="">Speed Test</a>
            </div>
            <div class="col">
                <a href="">Help Centre</a>
                <a href="">Jobs</a>
                <a href="">Cookie Preferences</a>
                <a href="">Legal Notices</a>
            </div>
            <div class="col">
                <a href="">Account</a>
                <a href="">Ways to Watch</a>
                <a href="">Corporate Information</a>
               
</body>
</html>