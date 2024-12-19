//
//  HotkeyModel.swift
//  Xcode Hotkeys
//
//  Created by Prinon bhowmik on 12/19/24.
//

import Foundation

struct HotkeyModel: Identifiable {
    let id = UUID()
    
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    var description: String {
        var result = ""
        
        
        for modifier in modifiers {
            result += modifier.rawValue
        }
        
        result += " \(character.capitalized)"
        
        return result
    }
}
