
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> JavaExam </title>
<meta name="keywords" content="Wooden Template, Portfolio Website, Personal, Free CSS Template, XHTML" />
<meta name="description" content="Wooden Template, Portfolio Website, Free CSS Template from TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Language" content="en-us" />
	<meta name="author" content="Niall Doherty" />
    <script src="js/jquery-1.2.1.pack.js" type="text/javascript"></script>
    <script src="js/jquery-easing.1.2.pack.js" type="text/javascript"></script>
    <script src="js/jquery-easing-compatibility.1.2.pack.js" type="text/javascript"></script>
    <script src="js/coda-slider.1.1.1.pack.js" type="text/javascript"></script>
    <script type="text/javascript">
    jQuery(window).bind("load", function() {
    jQuery("div#slider1").codaSlider();
    });
    </script>
    
	<style>
		#timer {
			color: red;
			font-family: sans-serif;
			font-size: 80px;
			position: fixed;
			top: 10%;
			left: 80%;
		}
                
	</style>
	<script>
		quizstarted = false;
		var d = 1200;
		function startquiz() {
			if(!quizstarted) {
				myVar=setInterval(function(){myTimer()},1000);
				quizstarted = true;
			}
		}
		function myTimer() {
			d--;
			document.getElementById("timer").innerHTML = Math.floor((d/60)) + ":" + (d % 60);
			if(d === 0) {
				clearInterval(myVar);
                          while(true){
				if (prompt("Please enter your name", "******") === 'abc') {
                                    document.getElementById("timer").innerHTML = "END";
					break;
                                    }   
                                 //alert("time out");
                             }
                                }
                            }  
                    
		
	</script>

</head>
<body>

<div id="templatemo_site_title_bar_wrapper">
        <div>
            <p id="timer"></p>
	</div>

	<div id="templatemo_site_title_bar">
    
    	<div id="site_title">
            <h1><a href="http://www.templatemo.com" target="_parent">
                EXAM
                <span>TRY IT !!!!!</span>
            </a></h1>
        </div>
            <!--form name="f2" action="jsp1.jsp"/>
            <br/><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TEAM NAME: <input type="text" name="t1" placeholder="Enter your team name" value="" size="50" />
            <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NAME: <input type="text" name="t2" placeholder="Enter 1st team member name" value="" size="50" /-->
               

      
	</div> <!-- end of templatemo_site_title_bar -->
</div> <!-- end of templatemo_site_title_bar_wrapper -->


<div id="templatemo_content_wrapper">

  <div id="templatemo_content">
    
    <!-- start of slider -->
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
    <%!
    /*    public static boolean find(int a[],int k)
                                            {
                                               int b[]=new int[30];	
                                                   for(int i=0;i<5;i++)
                                                   {
                                                      b[i]=a[i];
                                                   }
                                                   for(int i=0;i<5;i++)
                                                   {
                                                      if(b[i]==k)
                                                      {
                                                           return true;
                                                      }
                                                   }
                                              return false;
                                           }

    
    */
      %>
    
    <%
        String t1,t2,t3;
        t1=request.getParameter("t1");
        t2=request.getParameter("t2");
        t3=request.getParameter("t3");
        if(t3.equals("AdminArea"))
        {
           response.sendRedirect("admin.jsp");
        }
        
       
                    session.setAttribute("Tname", t1);
                    session.setAttribute("name", t2);
                    session.setAttribute("pass", t3);
                              /*  int  j;
                                            int a[]=new int[30];
                                            int p[]=new int[30];
                                            int p1[]=new int[30];
                                            
                                            Random r=new Random();
                                          int  b =r.nextInt(5);
                                        for(j=0;j<5;j++)
                                        { 
                                         a[j]=b;
                                         for(;;)
                                         {

                                         if(find(a,b)== false)
                                         {

                                             //System.out.println(b);
                                              p[j]=b;
                                              break;	

                                         }
                                         else{
                                           b=r.nextInt(5);
                                          } 	
                                        }
                                       }*/
                   Random r=new Random(); 
            int a[]=new int[50];
            
            for(int i=0;i<30;i++)
            {
                int b=r.nextInt(44)+1;
               if(a[0]!=b && a[1]!=b && a[2]!=b && a[3]!=b && a[4]!=b && a[5]!=b && a[6]!=b && a[7]!=b && a[8]!=b && a[9]!=b && a[10]!=b && a[11]!=b && a[12]!=b && a[13]!=b && a[14]!=b && a[15]!=b && a[16]!=b && a[17]!=b && a[18]!=b && a[19]!=b && a[20]!=b && a[21]!=b && a[22]!=b && a[23]!=b && a[24]!=b && a[25]!=b && a[26]!=b && a[27]!=b && a[28]!=b && a[29]!=b)
               // if(a[0]!=b && a[1]!=b && a[2]!=b && a[3]!=b && a[4]!=b && a[5]!=b)
                {
                    a[i]=b;
                }
                else{
                    i--;
                }
            }
           

                        
                    
        String driver5="oracle.jdbc.driver.OracleDriver";
                                String url5="jdbc:oracle:thin:@localhost:1521:XE";
                                Connection con5=null;
                                Statement st7=null;
                                
                                try{
                                     Class.forName(driver5);
                                     con5=DriverManager.getConnection(url5, "test", "suman");
                                     st7=con5.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
                                     ResultSet rs5=st7.executeQuery("select * from question " );  
                                    //int a;
                                     //Random r=new Random();
                                    // TreeSet myNumbers = new TreeSet();
                                     //ArrayList<Integer> numbers = new ArrayList<Integer>();     
                              // class D{
                                  
                                    
                                      
                                       /* for(int i=0;i<=3;i++)
                                        {
                                            p1[i]=i+1;
                                        }*/
                                                

                              //       Random r=new Random();
        
      %>  

<div class="slider-wrap">
	<div id="slider1" class="csw">
		<div class="panelContainer">
		<%  /*Random r=new Random(); 
            int a[]=new int[50];
            
            for(int i=0;i<6;i++)
            {
                int b=r.nextInt(10)+1;
           //     if(a[0]!=b && a[1]!=b && a[2]!=b && a[3]!=b && a[4]!=b && a[5]!=b && a[6]!=b && a[7]!=b && a[8]!=b && a[9]!=b && a[10]!=b && a[11]!=b && a[12]!=b && a[13]!=b && a[14]!=b && a[15]!=b && a[16]!=b && a[17]!=b && a[18]!=b && a[19]!=b && a[20]!=b && a[21]!=b && a[22]!=b && a[23]!=b && a[24]!=b && a[25]!=b && a[26]!=b && a[27]!=b && a[28]!=b && a[29]!=b)
               if(a[0]!=b && a[1]!=b && a[2]!=b && a[3]!=b && a[4]!=b && a[5]!=b)
                {*/
                for(int i=0;i<30;i++){
                   
                    rs5.absolute(a[i]);
               %>
 
			<div class="panel"  title="Page<%= i %>">
				<div class="wrapper">
                
                                    <form method="get" name="f1" action="result.jsp"/> 
                                        <textarea name="ta<%= i %>" rows="9" cols="80" value="" size="100" readonly="readonly" ><%= rs5.getString(1)  %></textarea><br/>
                                        <br/><%= rs5.getString(2)  %><input type="radio" name="ans<%= i %>" value="1" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br>
                                        <%=  rs5.getString(3)  %><input type="radio" name="ans<%= i %>" value="2" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <br>
                                        <%= rs5.getString(4)  %><input type="radio" name="ans<%= i %>" value="3" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <br><%= rs5.getString(5)  %><input type="radio" name="ans<%= i %>" value="4" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <br>Skip<input type="radio" name="ans<%= i %>" value="skip" />
                                        <input type="hidden" name="thid<%= i %>" value="<%=  rs5.getString(7)  %>" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <br/><br/><p><a href="#<%= i %>" class="cross-link" > <img src="images/pre.jpg" font-size="18" line-height="20"   height="40" width="100" /></a> 
                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                          <!--a href="#1" class="cross-link" ><img src="images/fst.png" font-size="18" line-height="20"   height="40" width="110" /></a>
                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                          
                                          <a href="#6" class="cross-link" ><img src="images/last.png" font-size="18" line-height="50"   height="40" width="110" /></a-->
                                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                          
                                          
                                            <a href="#<%= i+2 %>" class="cross-link" ><img src="images/prenxt.jpg" font-size="18" line-height="40"   height="40" width="110" /></a>
				
                                </div>
			</div>
                        <%  }
                /*else{
                    i--;
                }*/
                               
                       %>
                    <%  %>
                    <%
                          } catch(Exception e1)
                                    {
                                            out.println(e1);
                                     }
                                con5.close();

                
                        
                    %>
			<!--div class="panel" >
				<div class="wrapper">
                
					<h2>NEXT 2 QUESTIONS</h2>
                                           
                                        <input type="text" name="ta1" value="A sub class having more than 1 super class is called" size="100" readonly="readonly" /><br/><br/>
                                        Category<input type="radio" name="ans2" value="Category" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspClassification<input type="radio" name="ans2" value="Classification" /><br/><br/>
                                        Combination<input type="radio" name="ans2" value="Combination" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPartial paticipation<input type="radio" name="ans2" value="paticipation" /><br/><br/>
                                        <input type="text" name="ta1" value="Which are the following is a Wrapper Class" size="100" readonly="readonly" /><br/><br/>
                                        Byte<input type="radio" name="ans3" value="Byte" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspRandom<input type="radio" name="ans3" value="Random" /><br/><br/>
                                        Vector<input type="radio" name="ans3" value="Vector" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspString<input type="radio" name="ans3" value="String" />
                
				</div>
			</div>		
			<div class="panel" title="Page 3">
				<div class="wrapper">
					
                     <h2>NEXT 2 QUESTIONS</h2>
                                        <input type="text" name="ta1" value="What is the correct declaration of an abstract method that is intended to be public" size="100" readonly="readonly" /><br/><br/>
                                        public abstract void add()<input type="radio" name="ans4" value="public abstract void add()" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsppublic abstract void add(){}<input type="radio" name="ans4" value="public abstract void add(){}" /><br/><br/>
                                        public abstract add()<input type="radio" name="ans4" value="public abstract add()" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp public virtual add()<input type="radio" name="ans4" value="public virtual add()" /><br/><br/>
                                        <input type="text" name="ta1" value="Exception is define in____________ package" size="100" readonly="readonly" /><br/><br/>
                                        java.util<input type="radio" name="ans5" value="java.util" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspjava.lang<input type="radio" name="ans5" value="java.lang" /><br/><br/>
                                        java.awt<input type="radio" name="ans5" value="java.awt" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspjava.io<input type="radio" name="ans5" value="java.io" />
                
                </div>
			</div>
			<div class="panel" title="Page 4">
				<div class="wrapper">
					
                    <h2>NEXT 2 QUESTIONS</h2>
                                        <input type="text" name="ta1" value="Which exception is thrown by the read() method of input stream class" size="100" readonly="readonly" /><br/><br/>
                                        Exception<input type="radio" name="ans6" value="Exception" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFile not found<input type="radio" name="ans6" value="File not found" /><br/><br/>
                                        ReadException<input type="radio" name="ans6" value="ReadException" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp IoException<input type="radio" name="ans6" value="IoException" /><br/><br/>
                                        <input type="text" name="ta1" value="____________ is a default input stream" size="100" readonly="readonly" /><br/><br/>
                                        System.out<input type="radio" name="ans7" value="System.in" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSystem.in<input type="radio" name="ans7" value="System.in" /><br/><br/>
                                        <!--input type="radio" name="ans7" value="" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspjava.io<input type="radio" name="ans7" value="" /-->

				</div>
			</div>
			<!--div class="panel" title="Page 5">
				<div class="wrapper">
					
                    <h2>NEXT 2 QUESTIONS</h2>
                                        <input type="text" name="ta1" value="Which of the following is the equvalent of main in thread " size="100" readonly="readonly" /><br/><br/>
                                        start()<input type="radio" name="ans8" value="start()" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspgo()<input type="radio" name="ans8" value="go()" /><br/><br/>
                                        run()<input type="radio" name="ans8" value="run()" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp begin()<input type="radio" name="ans8" value="begin()" /><br/><br/>
                                        <input type="text" name="ta1" value="Applet is an application program" size="100" readonly="readonly" /><br/><br/>
                                        True<input type="radio" name="ans9" value="True" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFalse<input type="radio" name="ans9" value="False" /><br/><br/>
                                        <!--input type="radio" name="ans9" value="" />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspjava.io<input type="radio" name="ans9" value="" /-->
                	
                                
                                </div>
			</div>
			
		</div><!-- .panelContainer -->
	</div><!-- #slider1 -->
</div><!-- .slider-wrap -->

<p id="cross-links" style="width:0px; height: 0px; font-size:0; overflow: hidden;">
	Same-page cross-link controls:<br />
	<a href="#1" class="cross-link">Page 1</a> | <a href="#2" class="cross-link">Page 2</a> | <a href="#3" class="cross-link">Page 3</a> | <a href="#4" class="cross-link">Page 4</a> | <a href="#5" class="cross-link">Page 5</a>
</p>

    <!-- end of slider -->
	</div> 
	<!-- end of templatemo_content -->
</div>
<!-- end of templatemo_content_wrapper -->
    <!--input type="button" value="b1"  name="b1" /-->
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="index.html">Back to home</a>
    &nbsp&nbsp&nbsp&nbsp<input type="submit" onclick="result.jsp" value="Submit" name="b1" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" name="Start" value="Start" onclick="startquiz()">Start</button>

    <div id="templatemo_footer_wrapper">

	<div id="templatemo_footer">
	     <p>Presented By  Suman ghosh(3rd year,CSE)</p>
        <div class="cleaner_h10"></div>
        <p>Sumanghosh382@gmail.com</p> 
        
	</div> <!-- end of templatemo_footer -->
</div>


</html>