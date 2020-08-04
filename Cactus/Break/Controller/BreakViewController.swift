//
//  BreakViewController.swift
//  Cactus
//
//  Created by Baur on 7/29/20.
//  Copyright © 2020 Baur. All rights reserved.
//


import UIKit

class BreakViewController: UIViewController {

    @IBOutlet var cactusImageView: UIImageView!
    @IBOutlet var takeABreakbutton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cactusImageView.layer.cornerRadius = cactusImageView.frame.width/2
        cactusImageView.layer.masksToBounds = true
        
        takeABreakbutton.layer.cornerRadius = 14
        takeABreakbutton.layer.masksToBounds = true
    }

    
    @IBAction func didCloseButton() {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
