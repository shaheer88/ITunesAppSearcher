//
//  ViewController.swift
//  iTunesAppSearcher
//
//  Created by qbuser on 21/02/15.
//  Copyright (c) 2015 Muhammed Shaheer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK - Collection View Data Source Implementation
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("identifier", forIndexPath: indexPath) as UICollectionViewCell
        cell.backgroundColor = UIColor.blackColor()
        // Configure the cell
        return cell
    }


}

