package com.challenges


class PhoneNumber {

    String number
    boolean isActive

    static belongsTo = [customer: Customer]

    static constraints = {
        number blank: false, matches: '[0-9]{10}'
    }
}
