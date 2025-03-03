
<%@ page import="java.sql.*"  %>

<html>
           <head>

           <title>Auth App by Chaitanya</title>

             <style>
             *{font-size:40px;font-family:Cambria;}
             body{baackground-color:azure;}
             h1{background-color:black; color:white;width:70%;border-radius} 
             </style>

</head>

<body>
<center>

<%
String un1=(String)session.getAttribute("un");
if(un1!=null)
{
response.sendRedirect("home.jsp");

}

%>

<h1>Login Page</h1>
<a href="index.jsp">New User</a>
</br></br>

<form method="POST">
<input type= "text" name="un" placeholder="enter username"/>
   </br></br>

<input type="password" name="pw" placeholder="enter password"/>

   </br></br>

<input type= "submit"  value="login"  name="btn"/>
</form>

<%

   if(request.getParameter("btn")!=null)
{
   String un=request.getParameter("un");
   String pw=request.getParameter("pw");

try

{
     DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
     String url="jdbc:mysql://localhost:3306/auth28sep24";
     Connection con = DriverManager.getConnection(url,"root","Kaivalya@22");
     
String sql= " select * from users where name=? and password = md5(?)"; 

PreparedStatement pst=con.prepareStatement(sql);
pst.setString(1,un);  

pst.setString(2,pw);


ResultSet rs = pst.executeQuery();

if(rs.next())
{

session.setAttribute("un",un);
response.sendRedirect("home.jsp");

}

else
{

out.println("invalid credentials");

}
con.close();
  
}
catch(Exception e)
{
out.print("issue"+e);
}

}

%>

</center>
</body>

</html>