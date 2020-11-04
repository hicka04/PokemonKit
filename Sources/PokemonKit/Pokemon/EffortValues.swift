//
//  EffortValues.swift
//  
//
//  Created by hicka04 on 2020/10/11.
//

import Foundation

extension Pokemon {
    public struct EffortValues: Statuses {
        public static let max = 510
        public var totalValue: Int {
            Int(hitPoints.rawValue) + 
            Int(attack.rawValue) + 
            Int(defense.rawValue) + 
            Int(specialAttack.rawValue) + 
            Int(specialDefense.rawValue) + 
            Int(speed.rawValue)
        }
        public var remainingValue: Int {
            Self.max - totalValue
        }
        
        public let hitPoints: EffortValue
        public let attack: EffortValue
        public let defense: EffortValue
        public let specialAttack: EffortValue
        public let specialDefense: EffortValue
        public let speed: EffortValue
        
        public init?(
            hitPoints: EffortValue,
            attack: EffortValue,
            defense: EffortValue,
            specialAttack: EffortValue,
            specialDefense: EffortValue,
            speed: EffortValue
        ) {
            self.hitPoints = hitPoints
            self.attack = attack
            self.defense = defense
            self.specialAttack = specialAttack
            self.specialDefense = specialDefense
            self.speed = speed
            
            guard totalValue <= Self.max else {
                return nil
            }
        }
    }
}

extension Pokemon.EffortValues {
    public struct EffortValue: Status {
        static var max: Int = 255
        public var rawValue: Int
        
        public init?(rawValue: Int) {
            guard (0...Self.max).contains(rawValue) else {
                return nil
            }
            
            self.rawValue = rawValue
        }
    }
}
