//
//  Pokemon.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

public struct Pokemon {
    public let baseInfo: BaseInfo
    public var nickname: String?
    public var level: Level
    public var individualValue: IndividualValues
    
    public init(
        baseInfo: BaseInfo,
        nickname: String? = nil,
        level: Level,
        individualValue: IndividualValues
    ) { 
        self.baseInfo = baseInfo
        self.nickname = nickname
        self.level = level
        self.individualValue = individualValue
    }
}
