//
//  TestingExerciseTests.swift
//  TestingExerciseTests
//
//  Created by Zoltan Vegh on 20/07/2025.
//

import Testing
import XCTest
@testable import TestingExercise

struct TestingExerciseTests {

    func test_calculateTotal_salesTaxTwentyPercent() {
        let items: [CheckoutItem] = [
            CheckoutItem(name: "Fish and chips", price: 1000),
            CheckoutItem(name: "Chicken Wrap", price: 800),
            CheckoutItem(name: "Chicken salad", price: 700),
            CheckoutItem(name: "Hamburger", price: 1100)
        ]
        let taxPercentage = 20
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        XCTAssertEqual(totalToPay, 4320)
    }
}
