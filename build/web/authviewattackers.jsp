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
        <li ><a href="server.html">Storage Server</a></li>
        <li class="current"><a href="keyauthority.html">Key Authority</a></li>
        <li><a href="users.html">User</a></li>
      </ul>
    </div>	
    
	<div id="site_content">		

	  <div class="sidebar_container">       
		<div class="sidebar">
          <div class="sidebar_item">
            <h2>Key Authority Menu</h2>
            <p>
                <li ><a href="authority.html">Authority Home</a></li><br><br>
        <li ><a href="viewrequest.jsp">Generate Key</a></li><br><br>
        <li><a href="authviewuser.jsp">View User</a></li><br><br>
        <li><a href="authviewattackers.jsp">View Attackers</a></li><br><br>
        <li><a href="keyauthority.html">Logout</a></li> <br><br>
                
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

                encryption, <br>
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
            <h1>Key Authority</h1> 
            <p><br><br> </p><br><br>
                        
                                        
             <font size="4" color="white">    File Attackers.... 	</font>  
            <div class="form_settings">
            <table border=1; width=700px; cellpadding=2; cellspacing=2;>
               <font color="blue"> 
                   <tr>
                   <th style="background-color:background">Attacker Name</th>
                    <th style="background-color:background">File Name</th>
                      <th style="background-color:background">Key Tried</th>
                      <th style="background-color:background">Date</th>
                    </font>
                   </tr>  
                   <%
                    String query="select* from attacker";
                PreparedStatement check=con.prepareStatement(query);
                ResultSet rs=check.executeQuery();
                
              while(rs.next()){
                  %>
                    <tr>
                   <th style="background-color:whitesmoke"><%=rs.getString("name")%></th>
                    <th style="background-color:whitesmoke"><%=rs.getString("filename")%></th>
                     <th style="background-color:whitesmoke"><%=rs.getString("keytried")%></th>
                     <th style="background-color:whitesmoke"><%=rs.getString("date")%></th>
                    </font>
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
