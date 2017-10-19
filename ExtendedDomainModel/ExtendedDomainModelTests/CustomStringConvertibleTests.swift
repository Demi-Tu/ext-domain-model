//
//  CustomStringConvertibleTests.swift
//  ExtendedDomainModel
//
//  Created by AT on 10/18/17.
//  Copyright © 2017 AT. All rights reserved.
//

import XCTest

import ExtendedDomainModel

class CustomStringConvertibleTests: XCTestCase {
    
    func testMoney() {
        let money = Money(amount: 10, currency: .USD)
        XCTAssert(money.description == "USD10.0")
    }
    
    func testJob() {
        let job = Job(title: "Guest Lecturer", type: Job.JobType.Salary(1000))
        XCTAssert(job.description == "Job Title: Guest Lecturer Job Type: Salary(Int)" )
    }
    
    func testPerson() {
        let person = Person(firstName: "Ted", lastName: "Neward", age: 45)
        XCTAssert(person.description == "[Person: firstName:Ted lastName: Neward age:45 job:nil spouse:nil]")
    }
    
    func testFamily() {
        let ted = Person(firstName: "Ted", lastName: "Neward", age: 45)
        let charlotte = Person(firstName: "Charlotte", lastName: "Neward", age: 45)
        let family = Family(spouse1: ted, spouse2: charlotte)
        XCTAssert(family.description == "[Person: firstName:Ted lastName: Neward age:45 job:nil spouse:Charlotte][Person: firstName:Charlotte lastName: Neward age:45 job:nil spouse:Ted]")
    }
  
}
