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
		<origin:javascript src="login.js?lan=16"/>
    </head>
    
    <body>

        <div id="main">
       
        	<form method="post" action="${postUrl}">
        		
        		<div class="row email">
	    			<input type="text" id="email" name="userName" placeholder="Email" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password" name="password" placeholder="Password" />
        		</div>
        		 <div class="row remember">
        		     <input type='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				     <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
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

