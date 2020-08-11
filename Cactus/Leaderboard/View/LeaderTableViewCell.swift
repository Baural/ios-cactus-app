//
//  LeaderTableViewCell.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/9/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import UIKit

class LeaderTableViewCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var positionLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var hoursCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .clear
        
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.layer.masksToBounds = true
    }
    
    func configure(with leader: Leader, position: Int) {
        positionLabel.text = "\(position)"
        nameLabel.text = leader.name
        hoursCountLabel.text = "\(leader.statistics.totalFocusTimeInMinutes / 60) hr."
        
        if position <= 3 {
            positionLabel.textColor = UIColor(named: "mainColor")
        } else {
            positionLabel.textColor = UIColor(named: "secondTextColor")
        }
    }

}
