<!DOCTYPE html>
<html>
    <head>
        <meta name='layout' content='main'/>
        <title>Login Page</title>
        
        <!-- The stylesheet -->
        <origin:stylesheet src="login.css"/>
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- JavaScript includes - jQuery, the complexify plugin and our own script.js -->
		<g:javascript library="jquery" plugin="jquery"/>
		<origin:javascript src="login.js"/>
    </head>
    
    <body>

        <div id="main">
        	
        	<form method="post" action="/origin/j_security_check">
        		
        		<div class="row email">
	    			<input type="text" id="email" name="userName" placeholder="Email" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password1" name="password" placeholder="Password" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password2" name="password2" placeholder="Password (repeat)" disabled="true" />
        		</div>
        		
        		<!-- The rotating arrow -->
        		<div class="arrowCap"></div>
        		<div class="arrow"></div>
        		
        		<p class="meterText">Password Meter</p>
        		
        		<input type="submit" value="Login" />
        		
        	</form>
        </div>
    
    </body>
</html>

