<%@ page import="java.sql.*" %>
<html>

   <head>
         <title>Auth App by Chaitanya </title>
  
      <style>

           *{font-size: 40px; font-family: Cambria;}   
             body{background color:azure;}
             h1{background-color:balck; color:white;width:70%;border-radius:40px;}   

      </style>

   </head>

<body>
<center>
    
         <h1>Sign up Page</h1>
<%


        String un1=(String)session.getAttribute("un");
        if(un1!=null)
          {

          response.sendRedirect("home.jsp");
           }
  
%>


         <a href ="login.jsp"> Already Registered </a>
          </br></br>
   

     <form Method="POST">
         <input type="text"   name="un"   placeholder="username" />
          </br></br>
         
          <input type="password"   name="pw1"   placeholder="enter password"/>
             </br></br>

          <input type="password"   name="pw2"   placeholder="confirm password"/>
             </br></br>

          <input type="submit"  value="Register"   name="btn"/>

        <%
        if(request.getParameter("btn")!=null)
           {
           String un=request.getParameter("un");
            String pw1 =request.getParameter("pw1");
             String pw2=request.getParameter("pw2");
           
           if(pw1.equals(pw2))
           {
             try
                {

                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                String url="jdbc:mysql://localhost:3306/auth28sep24";
                Connection con= DriverManager.getConnection(url,"root","Kaivalya@22");
   
                String sql="insert into users values(?,md5(?))";
                PreparedStatement pst=con.prepareStatement(sql);
                                  pst.setString(1,un);
                                  pst.setString(2,pw1);  
                                  pst.executeUpdate();
                                   con.close();
                                   response.sendRedirect("login.jsp");             

                }
                        catch(Exception e)
                        {
                        out.print("issue" +e);
                         }

                   } 

                       else
                      {
                          out.println("passwords did not match");
                         }

 
                          }


        %>

</center>
</body>

</html>