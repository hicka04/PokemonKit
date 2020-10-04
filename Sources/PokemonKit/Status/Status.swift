//
//  Status.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

protocol Status {
    var hitPoints: UInt16 { get }
    var attack: UInt16 { get }
    var defense: UInt16 { get }
    var specialAttack: UInt16 { get }
    var specialDefense: UInt16 { get }
    var speed: UInt16 { get }
}
