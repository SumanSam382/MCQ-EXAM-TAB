<%-- 
    Document   : Pdetails
    Created on : 27 Jan, 2015, 7:31:45 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
    
        <%
            String t1,t2,t3,t4,t5;
            t1=request.getParameter("t1");
        t2=request.getParameter("t2");
        t3=request.getParameter("t3");
        t4=request.getParameter("t4");
                       String driver5="oracle.jdbc.driver.OracleDriver";
                                String url5="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con5=null;
                                Statement st7=null;
                               
                                
                                try{
                                     Class.forName(driver5);
                                     con5=DriverManager.getConnection(url5, "test", "suman");
                                     st7=con5.createStatement();
                                     ResultSet rs5;  
                                     
                                        rs5=st7.executeQuery("select * from PERSONALDETAILS where Tname='"+t1+"'"+"and name='"+t2+"'"+"and pass='"+t3+"'");
                                       int k=1;
                                       
                                        while(rs5.next()){
                                            %>
                                            <center>
						<table  cellspacing="2" cellpadding="11">
                                                       
                                            
                                        <thead>
                                                            <tr>
                                                                <th>QUESTION NO</th>
                                                                <th>QUESTION</th>
                                                                <th>CORRECT ANS</th>
                                                                <th>GIVEN ANS</th>
                                                                <th>TEAM NAME</th>
                                                                <th>NAME</th>
                                                                <th>PASSWARD</th>
                                                                
                                                            </tr>
                                                        </thead>
 
                                                        <tbody>
                                                            <tr>
                                                                <td><%= k++ %></td>
                                                                <td><%= rs5.getString(1) %></td>
                                                                <td><%= rs5.getString(2) %></td>
                                                                <td><%= rs5.getString(3) %></td>
                                                                <td><%= rs5.getString(4) %></td>
                                                                <td><%= rs5.getString(5) %></td>
                                                                <td><%= rs5.getString(6) %></td>
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
