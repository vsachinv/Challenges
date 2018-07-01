package com.challenges

import grails.gorm.transactions.Transactional

@Transactional
class BootStrapService {

    void createDefaultUsers() {
        Role role1 = new Role(authority: "ROLE_USER").save()
        Role role2 = new Role(authority: "ROLE_ADMIN").save()
        Role role3 = new Role(authority: "ROLE_DEV").save()
        User user1 = new User(username: 'admin', password: 'admin').save()
        User user2 = new User(username: 'dev', password: 'dev').save()
        UserRole.create(user1, role1, true)
        UserRole.create(user1, role2, true)
        UserRole.create(user2, role1, true)
        UserRole.create(user2, role3, true)
    }
}
