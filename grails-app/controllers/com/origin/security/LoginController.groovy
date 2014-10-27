package com.origin.security

class LoginController {

    def index() {
		auth()
	}
	
	def auth() {
		render( view: "auth")
	}
	
}
