//
//  SoundBar.swift
//  TestApp
//
//  Created by Goodwasp on 09.12.2023.
//

import Foundation

class SoundBar {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
}
