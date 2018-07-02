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

    void createCustomerData() {
        Customer customer1 = new Customer(name: "Sachin", address: "India-110001").save(failOnError: true)
        Customer customer2 = new Customer(name: "Anuj", address: "Dubai-123212").save(failOnError: true)
        new PhoneNumber(number: "0123456789", isActive: false, customer: customer1).save(failOnError: true)
        new PhoneNumber(number: "1124456789", isActive: true, customer: customer1).save(failOnError: true)
        new PhoneNumber(number: "9123456789", isActive: false, customer: customer1).save(failOnError: true)
        new PhoneNumber(number: "9123756789", isActive: false, customer: customer2).save(failOnError: true, flush: true)
    }
}
