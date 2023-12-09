//
//  Person.swift
//  TestApp
//
//  Created by Goodwasp on 09.12.2023.
//

import Foundation

class Person {
    let name: String
    var surname: String?
    let phone: String
    var imageData: Data?
    
    init(name: String, surname: String? = nil, phone: String, imageData: Data? = nil) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.imageData = imageData
    }
}
