//
//  LearnViewController.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/11/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController, UICollectionViewDataSource {


    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "article_cell", for: indexPath) as! ArticleCollectionViewCell
        return cell
    }
    
    



}
