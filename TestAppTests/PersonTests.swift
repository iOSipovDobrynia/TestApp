//
//  PersonTests.swift
//  TestAppTests
//
//  Created by Goodwasp on 09.12.2023.
//

import XCTest
@testable import TestApp

final class PersonTests: XCTestCase {

    var person: Person!
    
    override func setUp() {
        super.setUp()
        person = Person(name: "Foo", surname: "Bar", phone: "Baz")
    }

    override func tearDown() {
        person = nil
        super.tearDown()
    }

    func testInitInstancePersonWithNameAndPhone() {
        XCTAssertEqual(person.name, "Foo")
        XCTAssertEqual(person.phone, "Baz")
    }
    
    func testInitInstancePersonWithFullnameAndPhone() {
        XCTAssertEqual(person.surname, "Bar")
    }
    
    func testInitInstancePersonPersonWithImage() {
        let image = UIImage(systemName: "person")
        let imageData = image?.pngData()
        let person = Person(name: "Foo", surname: "Bar", phone: "Baz", imageData: imageData)
        XCTAssertNotNil(person.imageData)
    }
}
