//
//  LeaderViewController.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/9/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import UIKit

class LeaderViewController: UIViewController {


    @IBOutlet var imageView: UIImageView!
    @IBOutlet var daysWithCactusLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cactusSessionsCountLabel: UILabel!
    @IBOutlet var totalFocusTimeLabel: UILabel!
    @IBOutlet var aboutLabel: UILabel!

    @IBOutlet var cactusSessionsContainerView: UIView!
    @IBOutlet var totalFocusTimeContainerView: UIView!

        var leader: Leader!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.layer.masksToBounds = true

            title = leader.name

//        cactusSessionsContainerView.layer.cornerRadius = 16
//        cactusSessionsContainerView.layer.masksToBounds = true
//
//        totalFocusTimeContainerView.layer.cornerRadius = 16
//        totalFocusTimeContainerView.layer.masksToBounds = true
    }
    
}
