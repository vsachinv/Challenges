package com.challenges

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile

class ChallengeOneController {

    static allowedMethods = [upload: 'POST']

    def challengeService

    @Secured(['ROLE_USER'])
    def index() {

    }

    @Secured(['ROLE_USER'])
    def upload() {
        MultipartFile file = request.getFile('csvFile')
        if (!file || file.empty || !file.originalFilename.endsWith(".csv")) {
            flash.error = "Invalid File ${file.originalFilename}"
            redirect action: 'index'
            return
        }
        try {
            challengeService.addUserCoinsFromFile(file)
            flash.success = " Successfully uploaded ${file.originalFilename}"
        } catch (UserCoinInvalidException uce) {
            flash.warning = "Invalid row ${uce.lineNumber}"
        } catch (Exception ex) {
            flash.error = ex.message
        }
        redirect action: 'index'
    }
}