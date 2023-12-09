//
//  SoundBarTests.swift
//  TestAppTests
//
//  Created by Goodwasp on 09.12.2023.
//

import XCTest

final class SoundBarTests: XCTestCase {
    
    var items: [String] = []

    override func setUp() {
        super.setUp()
        
    }

    override func tearDown() {
        
        super.tearDown()
    }

    func testExample() {
        
    }

    func testPerformanceExample() {
        measure {
            getMoreItems()
        }
    }

    private func getItems() {
        let numbers = 1...1_000_000
        
        for number in numbers {
            let item = "Item: \(number)"
            items.append(item)
        }
    }
    
    private func getMoreItems() {
        let numbers = 1...1_000_000

        items = numbers.map { "Item: \($0)" }
    }
}
