package com.challenges

import org.grails.core.exceptions.GrailsRuntimeException

class UserCoinInvalidException extends GrailsRuntimeException {

    Integer lineNumber

    UserCoinInvalidException(String message) {
        super(message)
    }

    UserCoinInvalidException(Integer line, String message) {
        super(message)
        this.lineNumber = line
    }

}
