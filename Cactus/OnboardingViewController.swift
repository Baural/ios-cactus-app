//
//  OnboardingViewController.swift
//  Cactus
//
//  Created by Baur on 7/29/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
   
    var currentIndex = 0
    
    let titles = ["Welcome\nto the\nCactus app!",
    "Choose\ncactus\nto plant.",
    "Stay focused\n& productive!"]
    
    let imageNames = ["onboarding_welcome",
                      "onboarding_choose",
                      "onboarding_stay"]
    
  override func viewDidLoad() {
           super.viewDidLoad()
           
           nextButton.layer.cornerRadius = 14
           nextButton.layer.masksToBounds = true
           
           updateInterface()
       }
    
    @IBAction func didTapNextButton() {
            if currentIndex == 2 {
            performSegue(withIdentifier: "showSession", sender: nil)
        } else {
            currentIndex += 1
            pageControl.currentPage = currentIndex
            updateInterface()
        }
    
    
    }
    
    func updateInterface() {
        textLabel.text = titles[currentIndex]
        imageView.image = UIImage(named: imageNames[currentIndex])

        if currentIndex == 2 {
            nextButton.setTitle("Start", for: .normal)
        }
    }
}
