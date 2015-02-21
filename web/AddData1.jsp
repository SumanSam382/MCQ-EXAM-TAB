<%-- 
    Document   : AddData1
    Created on : 26 Jan, 2015, 9:19:01 PM
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
            String t1,t2,t3,t4,t5,t6,t7,t8;
            t1=request.getParameter("t1");
        t2=request.getParameter("t2");
        t3=request.getParameter("t3");
        t4=request.getParameter("t4");
        t5=request.getParameter("t5");
        t6=request.getParameter("t6");
        t7=request.getParameter("t7");
        t8=request.getParameter("t8");
        out.println(t1+" "+t2+" "+t3+" "+t4+" "+t5+" "+t6+" "+t7+" "+t8+" ");
        try{
                            String query11="Insert into question values('"+ t1 +"','"+ t2 +"','"+ t3 +"','"+ t4 +"','"+ t5+"','"+ t6 +"','"+ t7+"','"+ t8 +"')";
                                      String driver="oracle.jdbc.driver.OracleDriver";
                                      String url="jdbc:oracle:thin:@localhost:1521:XE";
                                      Connection con=null;
                                      Statement st=null;
                               
                                
                                     Class.forName(driver);
                                     con=DriverManager.getConnection(url, "test", "suman");
                                     st=con.createStatement();
                                     st.executeUpdate(query11);
                                     con.close(); 
                                    } catch(Exception e)
                                    {
                                            out.println(e);
                                    }
                                    
        
            
            
            
          %>  
          <script>
             if(confirm("1 row updated")=== true)
                                           {
                                            window.location.href="AddData.jsp";
                                           }   
                                           else{
                                               window.location.href="AddData.jsp";
                                              
                                           }
             
         </script>
         
    </body>
</html>
