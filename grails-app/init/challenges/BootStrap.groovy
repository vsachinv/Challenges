package challenges

import com.challenges.User

class BootStrap {

    def bootStrapService

    def init = { servletContext ->
        if(!User.count()){
            bootStrapService.createDefaultUsers()
        }
    }
    def destroy = {
    }
}
