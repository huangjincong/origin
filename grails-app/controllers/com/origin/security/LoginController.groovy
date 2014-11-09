package com.origin.security

import grails.plugin.springsecurity.SpringSecurityUtils

class LoginController {

	def springSecurityService
	
    def index() {
		auth()
	}
	
	def auth() {
		def config = SpringSecurityUtils.securityConfig
		if (springSecurityService.isLoggedIn()) {
			redirect uri: config.successHandler.defaultTargetUrl
		}
		else {
			def postUrl = "${request.contextPath}${config.apf.filterProcessesUrl}"
			render( view: "auth", model: [postUrl: postUrl,
		                           rememberMeParameter: config.rememberMe.parameter])
		}
		
	}
	
}
