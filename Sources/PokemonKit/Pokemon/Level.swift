//
//  Level.swift
//  
//
//  Created by hicka04 on 2020/10/06.
//

import Foundation

extension Pokemon {
    public struct Level: RawRepresentable {
        public var rawValue: Int
        
        public init?(rawValue: Int) {
            guard (0...100).contains(rawValue) else {
                return nil
            }
            
            self.rawValue = rawValue
        }
    }
}
