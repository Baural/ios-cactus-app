//
//  CactusTapBarController.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/9/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import UIKit

class CactusTapBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.init(named: "mainColor")
        tabBar.unselectedItemTintColor = UIColor.init(named: "lightGrey")
    }
    

}
