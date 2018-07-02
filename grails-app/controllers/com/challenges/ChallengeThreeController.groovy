package com.challenges

import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_ADMIN', 'ROLE_DEV'])
class ChallengeThreeController {

    def index() {}
}
