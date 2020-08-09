//
//  SessionsStorage.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/9/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import Foundation

class SessionsStorage {
    static let shared = SessionsStorage()
    
    var sessions = [Session]()
    
    func addSession(_ session: Session) {
        sessions.append(session)
    }
}
