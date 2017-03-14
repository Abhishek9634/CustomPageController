//
//  FFAvailableSeasonVC.swift
//  FootBallFantasy
//
//  Created by Abhishek Thapliyal on 3/12/17.
//  Copyright © 2017 Abhishek Thapliyal. All rights reserved.
//

import UIKit

class FFAvailableSeasonVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var seasonCollectionView: UICollectionView!
    public var arrayList : NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.seasonCollectionView.delegate = self
        self.seasonCollectionView.dataSource = self
        
        self.arrayList = ["ONE","ONE","ONE","ONE","ONE","ONE","ONE","ONE","ONE","ONE",
                          "ONE","ONE","ONE","ONE","ONE","ONE","ONE","ONE","ONE","ONE"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //==========================================================================================================
    // MARK : UICollectionView
    //==========================================================================================================
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as UICollectionViewCell
        
        let label = cell.viewWithTag(44) as! UILabel
        label.text = self.arrayList?.object(at: indexPath.row) as! String?
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (self.arrayList?.count)!
    }
    
}
