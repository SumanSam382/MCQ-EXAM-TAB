<%-- 
    Document   : leaderboard
    Created on : 21 Jan, 2015, 10:45:18 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
    
    <body>
        <%
           String driver5="oracle.jdbc.driver.OracleDriver";
                                String url5="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con5=null;
                                Statement st7=null;
                               
                                
                                try{
                                     Class.forName(driver5);
                                     con5=DriverManager.getConnection(url5, "test", "suman");
                                     st7=con5.createStatement();
                                     ResultSet rs5;  
                                     
                                        rs5=st7.executeQuery("select * from details order by marks" );
                                        while(rs5.next()){
                                            %>
                                            <center>
						<table  cellspacing="2" cellpadding="11">
                                                       
                                                        <tbody>
                                                            <tr>
                                                                <td><%= rs5.getString(1) %></td>
                                                                <td><%= rs5.getString(2) %></td>
                                                                <td><%= rs5.getString(3) %></td>
                                                                <td><%= rs5.getString(4) %></td>
                                                                <td><%= rs5.getString(5) %></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                        </center>
                                       <% }
                                         con5.close(); 
                                    } catch(Exception e)
                                    {
                                            out.println(e);
                                     }
            
            
         %>
         <center>
             <a href="index.html" >HOME</a>
         </center>
    </body>
</html>
