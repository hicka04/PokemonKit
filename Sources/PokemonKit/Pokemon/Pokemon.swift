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
    public var nature: Nature
    public var individualValues: IndividualValues
    public var effortValues: EffortValues
    public var actualValues: ActualValues {
        .init(
            baseStats: baseInfo.baseStats,
            individualValues: individualValues,
            effortValues: effortValues,
            level: level,
            nature: nature
        )
    }
    
    public init(
        baseInfo: BaseInfo,
        nickname: String? = nil,
        level: Level,
        nature: Nature,
        individualValues: IndividualValues,
        effortValues: EffortValues
    ) { 
        self.baseInfo = baseInfo
        self.nickname = nickname
        self.level = level
        self.nature = nature
        self.individualValues = individualValues
        self.effortValues = effortValues
    }
}
