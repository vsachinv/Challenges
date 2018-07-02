package com.challenges

import grails.gorm.transactions.Transactional
import org.springframework.web.multipart.MultipartFile

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
}