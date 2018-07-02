package com.challenges

class UserCoin {

    String username
    String userId
    Integer coin

    static constraints = {
        userId nullable: false, matches: '[0-9]{10}'
        coin nullable: false, min: 0
        username nullable: false, blank: false, validator: { val ->
            return !!User.countByUsername(val)
        }
    }
}
