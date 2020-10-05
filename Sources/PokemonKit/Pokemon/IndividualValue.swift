//
//  IndividualValue.swift
//  
//
//  Created by hicka04 on 2020/10/05.
//

import Foundation

extension Pokemon {
    /// 個体値
    public struct IndividualValue: Status {
        public private(set) var hitPoints: UInt8
        public private(set) var attack: UInt8
        public private(set) var defense: UInt8
        public private(set) var specialAttack: UInt8
        public private(set) var specialDefense: UInt8
        public private(set) var speed: UInt8
        
        public init(
            hitPoints: UInt8,
            attack: UInt8,
            defense: UInt8,
            specialAttack: UInt8,
            specialDefense: UInt8,
            speed: UInt8
        ) {
            self.hitPoints = hitPoints
            self.attack = attack
            self.defense = defense
            self.specialAttack = specialAttack
            self.specialDefense = specialDefense
            self.speed = speed
        }
        
        func validate(_ newValue: UInt8) -> Bool {
            newValue <= 31
        }
        
        public mutating func update(hitPoints: UInt8) throws {
            guard validate(hitPoints) else {
                throw NSError(domain: "IndividualValueOutOfRangeError", code: -1, userInfo: nil)
            }
            
            self.hitPoints = hitPoints
        }
        
        public mutating func update(attack: UInt8) throws {
            guard validate(attack) else {
                throw NSError(domain: "IndividualValueOutOfRangeError", code: -1, userInfo: nil)
            }
            
            self.attack = attack
        }
        
        public mutating func update(defense: UInt8) throws {
            guard validate(defense) else {
                throw NSError(domain: "IndividualValueOutOfRangeError", code: -1, userInfo: nil)
            }
            
            self.defense = defense
        }
        
        public mutating func update(specialAttack: UInt8) throws {
            guard validate(specialAttack) else {
                throw NSError(domain: "IndividualValueOutOfRangeError", code: -1, userInfo: nil)
            }
            
            self.specialAttack = specialAttack
        }
        
        public mutating func update(specialDefense: UInt8) throws {
            guard validate(specialDefense) else {
                throw NSError(domain: "IndividualValueOutOfRangeError", code: -1, userInfo: nil)
            }
            
            self.specialDefense = specialDefense
        }
        
        public mutating func update(speed: UInt8) throws {
            guard validate(speed) else {
                throw NSError(domain: "IndividualValueOutOfRangeError", code: -1, userInfo: nil)
            }
            
            self.speed = speed
        }
    }
}
