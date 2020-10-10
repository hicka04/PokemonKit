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
        public private(set) var hitPoints: IndividualValue
        public private(set) var attack: IndividualValue
        public private(set) var defense: IndividualValue
        public private(set) var specialAttack: IndividualValue
        public private(set) var specialDefense: IndividualValue
        public private(set) var speed: IndividualValue
        
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
        
        public mutating func update(hitPoints: IndividualValue) {
            self.hitPoints = hitPoints
        }
        
        public mutating func update(attack: IndividualValue) {
            self.attack = attack
        }
        
        public mutating func update(defense: IndividualValue) {
            self.defense = defense
        }
        
        public mutating func update(specialAttack: IndividualValue) {
            self.specialAttack = specialAttack
        }
        
        public mutating func update(specialDefense: IndividualValue) {
            self.specialDefense = specialDefense
        }
        
        public mutating func update(speed: IndividualValue) {
            self.speed = speed
        }
    }
}

extension Pokemon.IndividualValues {
    public struct IndividualValue: Status {
        static var max: UInt64 = 31
        
        public var rawValue: UInt8
        
        public init?(rawValue: UInt8) {
            guard rawValue <= Self.max else {
                return nil
            }
            
            self.rawValue = rawValue
        }
    }
}
