package com.challenges

import grails.rest.RestfulController

class PhoneNumberController extends RestfulController {

    static responseFormats = ['json', 'xml']

    PhoneNumberController() {
        super(PhoneNumber)
    }
}
