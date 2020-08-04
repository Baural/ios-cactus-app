//
//  CountdownTimer.swift
//  Cactus
//
//  Created by Baur on 7/29/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import Foundation

class CountdownTimer {
    var timer: Timer?
    var secondsLeft: Int
    
    let secondsLeftChangedHandler: (Int) -> Void
    
    init(durationInSeconds: Int, secondsLeftChangedHandler: @escaping (Int) -> Void) {
        secondsLeft = durationInSeconds
        self.secondsLeftChangedHandler = secondsLeftChangedHandler
    }
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.secondsLeft -= 1
            self.secondsLeftChangedHandler(self.secondsLeft)
            
            if self.secondsLeft == 0 {
                self.timer?.invalidate()
                self.timer = nil
            }
        }
    }
    
    func stop() {
        timer?.invalidate()
        timer = nil
    }
}
