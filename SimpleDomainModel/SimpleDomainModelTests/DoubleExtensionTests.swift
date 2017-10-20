//
//  DoubleExtensionTests.swift
//  SimpleDomainModelTests
//
//  Created by AT on 10/18/17.
//  Copyright © 2017 AT. All rights reserved.
//

import XCTest

import SimpleDomainModel

class DoubleExtensionTests: XCTestCase {
    
    func testUSD() {
        let usd = 2.0.USD
        XCTAssert(usd.amount == 2)
        XCTAssert(usd.currency == .USD)
    }
    
    func testEUR() {
        let eur = 3.0.EUR
        XCTAssert(eur.amount == 3)
        XCTAssert(eur.currency == .EUR)
    }
    
    func testGBP() {
        let gbp = 4.0.GBP
        XCTAssert(gbp.amount == 4)
        XCTAssert(gbp.currency == .GBP)
    }
    
    func testCAN() {
        let can = 5.0.CAN
        XCTAssert(can.amount == 5)
        XCTAssert(can.currency == .CAN)
    }
    
}
