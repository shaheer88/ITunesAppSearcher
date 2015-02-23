//
//  ViewController.swift
//  iTunesAppSearcher
//
//  Created by qbuser on 21/02/15.
//  Copyright (c) 2015 Muhammed Shaheer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    @IBOutlet weak var appDisplayCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Collection View Data Source Implementation
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(APP_BASIC_DETAIL_CELL_IDENTIFIER, forIndexPath: indexPath) as AppBasicDetailCell
        return cell
    }
    
    //MARK: UICollectionViewDelegate method implementation
    func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
        println("go to app detail screen")
    }
    

    //MARK: Button click actions
    
    @IBAction func displayAllApps(sender: UIButton) {
    }

    @IBAction func displayPaidApps(sender: UIButton) {
    }
    
    @IBAction func displayFreeApps(sender: AnyObject) {
    }
}

