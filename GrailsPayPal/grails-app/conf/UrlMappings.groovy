class UrlMappings {

	static mappings = {

        //habilitar los controladores con Vaadin y Grails.
        "/pago/$action?/$id?(.$format)?"(controller: "pago" )

        /*"/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }*/

        "/"(controller: 'pago', action: 'index')
        //"500"(view:'/error')
	}
}
