//
//  SessionManager.swift
//  Cactus
//
//  Created by Baur on 7/29/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import Foundation

protocol SessionManagerDelegate {
    func sessionDidStart(session: Session)
    func sessionTimeLeftChanged(session: Session, secondsLeft: Int)
    func sessionDidEnd(session: Session)
    func sessionDidCancel()
}

class SessionManager {
    let delegate: SessionManagerDelegate
    
    var sessionTimer: CountdownTimer?
    
    init(delegate: SessionManagerDelegate) {
        self.delegate = delegate
    }
    
    func startSession(session: Session) {
        sessionTimer = CountdownTimer(durationInSeconds: session.durationInSeconds) { secondsLeft in
            if secondsLeft == 0 {
//                SessionsStorage.shared.addSession(session)
//                Balance.shared.addCoins(session.coinsCount)
                self.delegate.sessionDidEnd(session: session)
            } else {
                self.delegate.sessionTimeLeftChanged(session: session, secondsLeft: secondsLeft)
            }
        }
        
        sessionTimer?.start()
        delegate.sessionDidStart(session: session)
    }
    
    func stopSession() {
        sessionTimer?.stop()
        delegate.sessionDidCancel()
    }
}
