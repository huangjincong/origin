package com.origin.tags

class AplicationTagLib {
    static namespace = "origin"
	
	def resource = { attrs ->
		def dir = attrs.remove("dir")
		def file = attrs.remove("file")
		def absolute = Boolean.valueOf(grailsApplication.config.origin.resource.path.absolute)
		def resourcePath =  grailsApplication.config.origin.resource.contextPath
		def resourceServerURL = grailsApplication.config.origin.resource.serverURL
		if (absolute) {
			out << "$resourcePath/$dir/$file";
		} else {
		    out << "$resourceServerURL$resourcePath/$dir/$file";
		}
		
	}
	private paramsToHtmlAttr(attrs) {
		attrs.collect { key, value -> "${key}=\"${value.toString().replace('\'', '\\\'')}\"" }?.join(" ")
	}
	def stylesheet = { attrs ->
		def src = attrs.remove("src")
		out << "<link href=\"${resource(dir:"css", file:src)}\" rel=\"stylesheet\" type=\"text/css\" ${paramsToHtmlAttr(attrs)} />"
	}
	def image = { attrs ->
	    def src = attrs.remove("src")
		def title = attrs.remove("title")
		def alt = attrs.remove("alt")
		out << "<img border=\"0\" title=\"${title}\" alt=\"${alt}\" src=\"${resource(dir:"images", file:src)}\" ${paramsToHtmlAttr(attrs)} />"
	}
	def javascript = { attrs ->
		def src = attrs.remove("src")
		out << "<script type=\"text/javascript\" src=\"${resource(dir:"js", file:src)}\" ${paramsToHtmlAttr(attrs)}></script>"
	}
}
