<!DOCTYPE html>

<html>
    <head>
        <title><g:layoutTitle default="Project Support Center"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<origin:stylesheet src="root.css"/>
		<g:layoutHead/>
    </head>
    <body>
        <div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a>
            <sec:ifLoggedIn>
	            <div class="welcomeInfo">
			    	<span class="loginUser">${message(code: 'logined.weblcome.label', default: 'Welcome')}, Evan</span>|
			    	<span class="logout"><g:link controller="logout">${message(code: 'logined.signout.label', default: 'Logout')}</g:link></span>
			    </div>
		    </sec:ifLoggedIn>
        </div>
        <sec:ifLoggedIn>
	        <div class="menubar">
	            <ul class="siteNav">
	                <li><g:link controller="home">Home</g:link></li>
	                <li><a href="#">Customer Management</a>
	                    <ul class="subNav">
							<li><g:link controller="customerUser" action="index">Search</g:link>
							</li> 
							<li><g:link controller="customerLicenseManagement" action="index">Customer License</g:link>
							</li>	
						</ul>
	                </li>
	                <li><a href="#">Deployment Management</a>
	                    <ul class="subNav">
	                        <li><g:link controller="customerUser" action="index">Search</g:link>
							</li> 
	                    </ul>
	                </li> 
	                 <li><a href="#">Call Home</a>
	                     <ul class="subNav">
	                        <li><g:link controller="customerUser" action="index">Search</g:link>
							</li> 
	                    </ul>
	                 </li> 
	            </ul>
	        </div>
	    </sec:ifLoggedIn>
        <g:layoutBody/>
        <div class="footer" role="contentinfo">
            <span>&copy; 2014 Evan Inc. ALL RIGHTS RESERVED.</span>
        </div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
    </body>
</html>