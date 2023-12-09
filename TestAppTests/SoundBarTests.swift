//
//  SoundBarTests.swift
//  TestAppTests
//
//  Created by Goodwasp on 09.12.2023.
//

import XCTest
@testable import TestApp

final class SoundBarTests: XCTestCase {
    
    var items: [String] = []
    
    var sut: SoundBar!

    override func setUp() {
        super.setUp()
        sut = SoundBar()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testSetVolumeShouldBeReturnSetedVolume() {
        let volume = 50
        sut.setVolume(to: volume)
        XCTAssertEqual(sut.volume, volume)
    }
    
    func testSetVolumeShouldBeReturnZeroWhenLowestVolume() {
        sut.setVolume(to: -1)
        XCTAssertEqual(sut.volume, 0, "Lowest volume should be 0")
    }
    
    func testSetVolumeShouldBeReturnHunderedWhenHighestVolume() {
        sut.setVolume(to: 1_000)
        XCTAssertEqual(sut.volume, 100, "Highest volume should be 100")
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
