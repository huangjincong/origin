package com.origin.home
import org.springframework.security.core.context.SecurityContextHolder as SCH

class HomeController {

    def index() {
		render(view:"home")
	}
}
