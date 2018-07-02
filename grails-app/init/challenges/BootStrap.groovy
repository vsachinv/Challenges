package challenges

import com.challenges.Customer
import com.challenges.User

class BootStrap {

    def bootStrapService

    def init = { servletContext ->
        if (!User.count()) {
            bootStrapService.createDefaultUsers()
        }

        if (!Customer.count()) {
            bootStrapService.createCustomerData()
        }
    }
    def destroy = {
    }
}
