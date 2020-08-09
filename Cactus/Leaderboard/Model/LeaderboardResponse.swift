//
//  LeaderboardResponse.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/9/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import Foundation

struct LeaderboardResponse: Decodable {
    let users: [Leader]
}
