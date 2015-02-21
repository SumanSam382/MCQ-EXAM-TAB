<%-- 
    Document   : result
    Created on : 21 Jan, 2015, 12:16:44 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="folder/nature-background.jpg">
        <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
    
        <% 
                                     
                    String  Tname=(String)session.getAttribute("Tname");
                    String  name=(String)session.getAttribute("name");
                    String  pass=(String)session.getAttribute("pass");
                            
                                    String p[]=new String[50];
                                    String b[]=new String[50];
                                    double m=0.0;
                                     int c=0;
                                    
                                       
                                        String driver5="oracle.jdbc.driver.OracleDriver";
                                String url5="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con5=null;
                                Statement st7=null;
                               String driver="oracle.jdbc.driver.OracleDriver";
                                      String url="jdbc:oracle:thin:@localhost:1521:XE";
                                      Connection con=null;
                                      Statement st=null;
                               
                                
                                     Class.forName(driver);
                                     con=DriverManager.getConnection(url, "test", "suman");
                                     st=con.createStatement();
                                     
                                
                                try{
                                     Class.forName(driver5);
                                     con5=DriverManager.getConnection(url5, "test", "suman");
                                     st7=con5.createStatement();
                                     ResultSet rs5;  
                                    for(int i=0;i<30;i++){ 
                                        p[i]=request.getParameter("thid"+i);
                                        b[i]=request.getParameter("ans"+i);
                                        /*out.println(p[i]);
                                        out.println();
                                        out.println(b[i]);*/
                                        rs5=st7.executeQuery("select * from question where quesno='"+p[i]+"'" );
                                       // String q=("select * from question where ques='"+p[i]+"'");
                                        //out.println(q);
                                        if(rs5.next()){
                                      String query11="Insert into PERSONALDETAILS values('"+ rs5.getString(1) +"','"+ rs5.getString(6) +"','"+ b[i] +"','"+ Tname +"','"+ name+"','"+ pass +"')";
                                      st.executeUpdate(query11);
                                      
                                    
                                           if( b[i]!=(null) ){
                                               if(!b[i].equals("skip")){
                                            if(b[i].equals(rs5.getString(8)))
                                            {
                                                m=m+1;
                                            }
                                           }
                                           else{
                                               c=c+1;
                                           }
                                           }else{
                                               c=c+1;
                                           }   
                                           
                                           if( b[i]!=(null) && !b[i].equals(rs5.getString(8)) && !b[i].equals("skip") )
                                           {
                                               m=m-0.25;
                                           }
                                        }
                                        
                                    }
                                    con.close();
                                    con5.close(); 
                                        } catch(Exception e1)
                                    {
                                            out.println(e1);
                                     }
                                

                                    
                                   
                                   String query11;
                                    //out.println(Tname+"   "+name+"   "+pass+"   "+m+"   "+c);
                                   out.println("Thanku"); 
                                   try{
                                    query11="Insert into details values('"+ Tname +"','"+ name +"','"+ pass +"','"+ m +"','"+ c +"')";
                                      String driver1="oracle.jdbc.driver.OracleDriver";
                                      String url1="jdbc:oracle:thin:@localhost:1521:XE";
                                      Connection con1=null;
                                      Statement st1=null;
                               
                                
                                     Class.forName(driver1);
                                     con1=DriverManager.getConnection(url1, "test", "suman");
                                     st1=con1.createStatement();
                                     st1.executeUpdate(query11);
                                     con1.close(); 
                                    } catch(Exception e)
                                    {
                                            out.println(e);
                                     }
                                    
         %>
         <script>
             if(confirm("Thanku....")=== true)
                                           {
                                            window.location.href="index.html";
                                           }   
                                           else{
                                               window.location.href="index.html";
                                              
                                           }
             
         </script>
             
    </body>
</html>
