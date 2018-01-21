<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<%@include file="getcon.jsp"%>
<head>
  <title>SECURE DATA SHARING IN CLOUD COMPUTING</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/image_slide.js"></script>
</head>

<body>
  <div id="main">
    <div id="header">
	  <div id="banner">
	    <div id="welcome">
	      <h1>Secure Data Sharing in Cloud Computing Using Revocable Storage Identity Based Encryption</h1>
	    </div>
	    <div id="welcome_slogan">
	      <h1></h1>
	    </div>
	  </div>
    </div>

	<div id="menubar">
      <ul id="menu">
        <li ><a href="index.html">Home</a></li>
        <li><a href="dataprovider.html">Data Provider</a></li>
        <li class="current"><a href="server.html">Storage Server</a></li>
        <li><a href="keyauthority.html">Key Authority</a></li>
        <li><a href="users.html">User</a></li>
      </ul>
    </div><!--close menubar-->	
    
	<div id="site_content">		

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Storage Server Menu</h2>
            <p>
                <li ><a href="serverpage.html">server home</a></li><br><br>
        <li ><a href="viewfiles.jsp">view files</a></li><br><br>
        <li><a href="viewowners.jsp">view owners</a></li><br><br>
        <li><a href="serviewusers.jsp">view users</a></li><br><br>
        <li><a href="unrevoke.jsp">Unrevoke users</a></li><br><br>
        <li><a href="serviewkey.jsp">view Secret key</a></li><br><br></br>
        <li><a href="serviewattacker.jsp">view Attackers</a></li><br><br>
        <li><a href="serviewresults.jsp">view results</a></li><br><br>
        <li><a href="server.html">Logout</a></li> <br><br>
                
            </p>
          </div>
        </div>    		
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Concepts</h2>
            <h3></h3>
            <p>
                cloud computing, <br>
                data sharing, <br>
                revocation, <br>
                identity based encryption, <br><br><br>

                encrytion, <br>
                decryption, <br>
                key exposure, <br>

            </p>         
		  </div>
        </div>
				
        <div class="sidebar">
          <div class="sidebar_item">
            <h2>Contact</h2>
           <p>Aswin T N</p>
            <p>Email: <a href="mailto:info@youremail.co.uk">aswint.n2016@vitstudent.ac.in</a></p>
          </div>
        </div>
       </div>	
	
	  <div class="slideshow">
	    <ul class="slideshow">
          <li class="show"><img width="680" height="250" src="images/home_1.jpg" alt="&quot;cloud&quot;" /></li>
          <li><img width="680" height="250" src="images/home_2.jpg" alt="&quot;cloud&quot;" /></li>
        </ul>
      </div>	  	 
	 
	  <div id="content">
        <div class="content_item">
            <h1>Storage Server</h1> 
            <p><br><br> </p><br><br>
                        
                                <font size="4" color="white">  <center> List Of Owner Details </center>	</font>  
            <div class="form_settings">
                <table border=1; width=700px; cellspacing=3; cellpadding=3;>
		<font color="blue"> 
                   <tr>
                   <th style="background-color:royalblue"width=200px>OWNER NAME</th>
                    <th style="background-color:royalblue" width=200px>D.O.B.</th>
                     <th style="background-color:royalblue" width=400px>EMAIL-ID</th>
                      <th style="background-color:royalblue" width=250px>PHONE</th>
                      <th style="background-color:royalblue">LOCATION</th>
                   </tr>
                    </font>
		  <%
                            String query="select name,email,Phone,DOB,Country from dataprovider";
                            PreparedStatement check=con.prepareStatement(query);
                            ResultSet rs=check.executeQuery();
                            
                            while(rs.next()){
                            String name=rs.getString("name");
                            String DOB=rs.getString("DOB");
                            String phone=rs.getString("phone");
                            String mail=rs.getString("email");
                            String location=rs.getString("country");
                            %>
                            <font color="blue"> 
                   <tr>
                   <th style="background-color:whitesmoke"width=200px><%out.println(name);%></th>
                    <th style="background-color:whitesmoke" width=200px><%out.println(DOB);%></th>
                     <th style="background-color:whitesmoke" width=400px><%out.println(mail);%></th>
                     <th style="background-color:whitesmoke"><%out.println(phone);%></th>
                      <th style="background-color:whitesmoke" width=250px><%out.println(location);%></th>
                      
                   </tr>
                            <%
                            }
                            %>  
                </table>
                    <br style="clear:both"/>
		  
            </div>
             	
              
            
		</div>
      </div> 
	</div>
    
	   
 
  </div>
  
  
</body>
</html>