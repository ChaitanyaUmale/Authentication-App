<%@ page import="java.sql.*" %>


<html>

<head>
<title>Auth App by Chaitanya</title>
<style>

                *{font-size: 40px;font-family:Cambria;}
                  body{background-color:azure;}
                  h1{background-color: black;color: white; width:70%;border radius:40px; }

</style>
<head>

<body>
<center>

<h1>   Home Page </h1>

<%
        String un=(String)session.getAttribute("un");
        if (un==null)
          {
               response.sendRedirect("login.jsp");

              }

   else
           {

          out.print("Welcome "+ un);

            }

%>

<form method="POST">
     <input type= "submit"   value="Logout" name="btn"/>
</form>
         <%

             if (request.getParameter("btn")!=null)
             {
                 session.removeAttribute("un");
                  response.sendRedirect("index.jsp");
             } 

         %>

</center>

<body>

</html>