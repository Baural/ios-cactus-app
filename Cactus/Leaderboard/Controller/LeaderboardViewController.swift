//
//  LeaderboardViewController.swift
//  Cactus
//
//  Created by Baurzhan Alzhanov on 8/9/20.
//  Copyright © 2020 Baur. All rights reserved.
//

import UIKit

class LeaderboardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet var tableView: UITableView!
    
     var leaders = [Leader]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Leaderboard"
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return leaders.count
      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let leaderCell = tableView.dequeueReusableCell(withIdentifier: "leader_cell", for: indexPath) as! LeaderTableViewCell
             
//             let leader = leaders[indexPath.row]
//             leaderCell.configure(with: leader, position: indexPath.row + 1)
             
             return leaderCell
    }
    


}
