package com.challenges

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_USER'])
class ChallengeTwoController {

    def challengeService

    def index() {

    }

    def convert(String property, Double value) {
        try {
            render(challengeService.getConversionValues(property, value) as JSON)
        } catch (Exception ex) {
            render(["error": ex.message] as JSON)
        }
    }
}
