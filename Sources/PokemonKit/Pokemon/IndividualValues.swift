//
//  IndividualValues.swift
//  
//
//  Created by hicka04 on 2020/10/05.
//

import Foundation

extension Pokemon {
    /// 個体値
    public struct IndividualValues: Statuses {
        public var hitPoints: IndividualValue
        public var attack: IndividualValue
        public var defense: IndividualValue
        public var specialAttack: IndividualValue
        public var specialDefense: IndividualValue
        public var speed: IndividualValue
        
        public init(
            hitPoints: IndividualValue,
            attack: IndividualValue,
            defense: IndividualValue,
            specialAttack: IndividualValue,
            specialDefense: IndividualValue,
            speed: IndividualValue
        ) {
            self.hitPoints = hitPoints
            self.attack = attack
            self.defense = defense
            self.specialAttack = specialAttack
            self.specialDefense = specialDefense
            self.speed = speed
        }
    }
}

extension Pokemon.IndividualValues {
    public struct IndividualValue: Status {
        static var max: Int = 31
        
        public var rawValue: Int
        
        public init?(rawValue: Int) {
            guard (0...Self.max).contains(rawValue) else {
                return nil
            }
            
            self.rawValue = rawValue
        }
    }
}
