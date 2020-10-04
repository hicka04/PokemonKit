//
//  Pokemon.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

public struct Pokemon {
    public let baseInfo: BaseInfo
    public private(set) var nickname: String?
    public private(set) var level: UInt8
    
    public init?(
        baseInfo: BaseInfo,
        nickname: String? = nil,
        level: UInt8
    ) {
        guard level <= 100 else {
            return nil
        }
        
        self.baseInfo = baseInfo
        self.nickname = nickname
        self.level = level
    }
    
    mutating public func update(nickname: String?) {
        self.nickname = nickname
    }
    
    mutating public func update(level: UInt8) throws {
        guard level <= 100 else {
            throw NSError(domain: "LevelOutOfBoundsError", code: -1, userInfo: nil)
        }
        
        self.level = level
    }
}
