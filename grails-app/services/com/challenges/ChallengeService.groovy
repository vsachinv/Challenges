package com.challenges

import grails.gorm.transactions.NotTransactional
import grails.gorm.transactions.Transactional
import grails.plugins.rest.client.RestBuilder
import grails.plugins.rest.client.RestResponse
import grails.util.Holders
import groovy.util.slurpersupport.GPathResult
import org.springframework.http.HttpStatus
import org.springframework.web.multipart.MultipartFile

import java.text.DecimalFormat

@Transactional
class ChallengeService {

    void addUserCoinsFromFile(MultipartFile file) {
        List<UserCoin> userCoinList = []
        int index = 0
        file.inputStream.toCsvReader(['charset': 'UTF-8']).eachLine { tokens ->
            index++
            if (tokens.size() == 3) {
                UserCoin userCoin = new UserCoin(userId: tokens[0], coin: tokens[1], username: tokens[2])
                if (!userCoin.validate()) {
                    throw new UserCoinInvalidException(index, "Invalid Row Data at Line ${index}")
                }
                userCoinList.add(userCoin)
            } else {
                throw new UserCoinInvalidException(index, "Invalid Row Data at Line ${index}")
            }
        }
        userCoinList*.save(failOnError: true)
    }

    @NotTransactional
    Map<String, Double> getConversionValues(String property, Double value) {
        RestBuilder rest = new RestBuilder()
        String url = Holders.config.api.temp.conversion.url
        Map params = ["property": property, "value": value]
        RestResponse resp = rest.get(url) {
            urlVariables params
        }
        if (resp.statusCode == HttpStatus.OK) {
            GPathResult data = new XmlSlurper().parseText(resp.text)
            DecimalFormat decimalFormal = new DecimalFormat("#.##")
            return [celsius: decimalFormal.format(data.Celsius.text().toDouble()), fahrenheit: decimalFormal.format(data.Fahrenheit.text().toDouble())]
        }
        log.error(resp.text)
        throw new RuntimeException("Error occurred while retrieving data from Temp API")
    }

}