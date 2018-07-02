package com.challenges


class Customer {
    String name
    String address

    static hasMany = [phoneNumbers: PhoneNumber]

    static constraints = {
        name blank: false
        address blank: false
    }
}
