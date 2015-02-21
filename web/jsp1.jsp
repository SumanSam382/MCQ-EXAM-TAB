<%-- 
    Document   : jsp1
    Created on : 19 Sep, 2014, 2:48:42 PM
    Author     : Sony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanku...</title>
    </head>
    <body background="folder/nature-background.jpg">
        <h1>THANK YOU...................</h1>
         <%@ page import="java.io.*"%>
          <%@ page import="java.util.*"%>
        <%
            try{
                BufferedWriter write = new BufferedWriter(new FileWriter("D:/filenew2.txt", true));

           String n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,s,p;
           int m=0,c=0;
           /*s=request.getParameter("t1");
           p=request.getParameter("t2");
           n1=request.getParameter("ans");
           n2=request.getParameter("ans1");
           n3=request.getParameter("ans2");
           n4=request.getParameter("ans3");
           n5=request.getParameter("ans4");
           n6=request.getParameter("ans5");
           n7=request.getParameter("ans6");
           n8=request.getParameter("ans7");
           n9=request.getParameter("ans8");
           n10=request.getParameter("ans9");
           String s1="(a) and (b)";
           String s2="128>>1 gives 64";
           String s3= "Category";
           String s4="Byte";
           String s5= "public abstract void add()";
           String s6="java.lang";
           String s7="IoException";
           String s8="System.in";
           String s9="run()"; 
           String s10="False";        
         if(n1 == null)
          {
              c=c+1;
          }
         if(s1.equals(n1))
          {
              m=m+3;
          }
         if(n1!=(null) && !n1.equals("(a) and (b)")){
              m=m-1;
          }
        
          if(s2.equals(n2))
          {
              m=m+3;
          }
          if( n2!=(null) && !n2.equals("128>>1 gives 64")){
              m=m-1;
          }
          if(n2==(null))
          {
              c=c+1;
          }
          
          if(n3==(null))
          {
              c=c+1;
          }
          if(s3.equals(n3))
          {
              m=m+3;
          }
          if(n3!=(null) && !n3.equals(s3)){
              m=m-1;
          }
           if(s4.equals(n4))
          {
              m=m+3;
          }
           if( n4!= (null) && !s4.equals(n4)){
              m=m-1;
          }
           if(n4==(null))
          {
              c=c+1;
          }
           if(s5.equals(n5))
          {
              m=m+3;
          }
           if( n5!=(null) && !s5.equals(n5)){
              m=m-1;
          }
           if(n5== (null))
          {
              c=c+1;
          }
           if(s6.equals(n6))
          {
              m=m+3;
          }
           if(n6!=(null) && !s6.equals(n6)){
              m=m-1;
          }
           if(n6==(null))
          {
              c=c+1;
          }
           if(s7.equals(n7) )
          {
              m=m+3;
          }
           if(n7!=(null) && !s7.equals(n7)){
              m=m-1;
          }
           if(n7== (null))
          {
              c=c+1;
          }
           if(s8.equals(n8) )
          {
              m=m+3;
          }
           if(n8!=(null) && !s8.equals(n8)){
              m=m-1;
          }
           if(n8== (null))
          {
              c=c+1;
          }
           if(s9.equals(n9) )
          {
              m=m+3;
          }
           if(n9 !=(null) && !s9.equals(n9)){
              m=m-1;
          }
           if(n9==(null))
          {
              c=c+1;
          }
           if(s10.equals(n10) )
          {
              m=m+3;
          }
           if(n10!=(null) && !s10.equals(n10)){
              m=m-1;
          }
           if(n10==(null))
          {
              c=c+1;
          }
         /*out.println(n1+"<br/>");
           out.println(n2+"<br/>");
           out.println(n3+"<br/>");
           out.println(n4+"<br/>");
           out.println(n5+"<br/>");
           out.println(n6+"<br/>");
           out.println(n7+"<br/>");
           out.println(n8+"<br/>");
           out.println(n9+"<br/>");
           out.println(n10+"<br/>");*/
           out.println(" "+"Marks= "+m+" "+"c= "+c+"s= "+s+"p= "+p); 
                   
           write.write((int)m+" "+"Tname= "+s+" "+"Name= "+p);
           write.newLine();
           write.close();
           }catch(Exception e) {
            out.println("Exception message: " + e);
           }
        %>
           
    </body>
</html>
