//
//  CactusCollectionViewCell.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/13/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import UIKit

class CactusCollectionViewCell: UICollectionViewCell {
    @IBOutlet var cardView: UIView!
    @IBOutlet var cactusImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .clear
        
        cardView.layer.cornerRadius = 16
        cardView.layer.masksToBounds = true
        
        cactusImageView.layer.cornerRadius = 16
        cactusImageView.layer.masksToBounds = true
    }


    
}
