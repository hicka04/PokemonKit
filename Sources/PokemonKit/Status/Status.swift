//
//  Status.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

protocol Status {
    associatedtype UInteger: UnsignedInteger
    
    var hitPoints: UInteger { get }
    var attack: UInteger { get }
    var defense: UInteger { get }
    var specialAttack: UInteger { get }
    var specialDefense: UInteger { get }
    var speed: UInteger { get }
}
