package com.challenges

import grails.rest.RestfulController

class CustomerController extends RestfulController {

    static responseFormats = ['json', 'xml']

    static allowedMethods = [phoneNumbers: ['GET']]

    CustomerController() {
        super(Customer)
    }

    def phoneNumbers(Long id) {
        respond Customer.findById(id)?.phoneNumbers
    }
}
