//
//  Statuses.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

protocol Statuses {
    associatedtype Value: Status
    
    var hitPoints: Value { get }
    var attack: Value { get }
    var defense: Value { get }
    var specialAttack: Value { get }
    var specialDefense: Value { get }
    var speed: Value { get }
}

protocol Status: RawRepresentable where RawValue: UnsignedInteger {
    static var max: UInt64 { get }
}
