//
//  CustomStringConvertibleTests.swift
//  SimpleDomainModelTests
//
//  Created by AT on 10/18/17.
//  Copyright © 2017 AT. All rights reserved.
//

import XCTest

import SimpleDomainModel

class CustomStringConvertibleTests: XCTestCase {
    
    func testMoney() {
        let money = Money(amount: 10, currency: .USD)
        XCTAssert(money.description == "USD10")
    }
    
    func testJob() {
        let job = Job(title: "Guest Lecturer", type: Job.JobType.Salary(1000))
        XCTAssert(job.description == "Job Title: Guest Lecturer" )
    }
    
    func testPerson() {
        let person = Person(firstName: "Ted", lastName: "Neward", age: 45)
        XCTAssert(person.description == "[First Name:Ted Last Name:Neward Age:45 Job:N/A Spouse:N/A]")
    }
    
    func testFamily() {
        let ted = Person(firstName: "Ted", lastName: "Neward", age: 45)
        let charlotte = Person(firstName: "Charlotte", lastName: "Neward", age: 45)
        let family = Family(spouse1: ted, spouse2: charlotte)
        XCTAssert(family.description == "[First Name:Ted Last Name:Neward Age:45 Job:N/A Spouse:Charlotte][First Name:Charlotte Last Name:Neward Age:45 Job:N/A Spouse:Ted]")
    }
    
}
