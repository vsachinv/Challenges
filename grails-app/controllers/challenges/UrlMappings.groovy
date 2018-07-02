package challenges

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/api/phoneNumbers(.$format)?"(controller: 'phoneNumber', action: 'index', method: 'GET')

        "/api/phoneNumbers/$id(.$format)?"(controller: 'phoneNumber', action: 'update', method: 'PUT')

        "/api/customers/$id/phoneNumbers(.$format)?"(controller: 'customer', action: 'phoneNumbers', method: 'GET')

        "/"(view: "/index")
        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
