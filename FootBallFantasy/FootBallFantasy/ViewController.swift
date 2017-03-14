//
//  ViewController.swift
//  FootBallFantasy
//
//  Created by Abhishek Thapliyal on 3/12/17.
//  Copyright © 2017 Abhishek Thapliyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        FFNetworkManager().getTeams() { (array, error) in
//            
//        }
        
//        FFNetworkManager().getTeamDetails(teamId: NSNumber(value: 1851)) { (team, list, error) in
//            
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let fullScreenVC = storyBoard.instantiateViewController(withIdentifier: "FFAvailableSeasonVC") as! FFAvailableSeasonVC
        
        self.present(fullScreenVC, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

