//
//  LeaderStatistics.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/9/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import Foundation

struct LeaderStatistics: Decodable {
    let daysCount: Int
    let sessionsCount: Int
    let totalFocusTimeInMinutes: Int
}
