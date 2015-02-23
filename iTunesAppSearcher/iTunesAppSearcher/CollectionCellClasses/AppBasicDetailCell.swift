//
//  AppBasicDetailCell.swift
//  iTunesAppSearcher
//
//  Created by qbuser on 23/02/15.
//  Copyright (c) 2015 Muhammed Shaheer. All rights reserved.
//

import UIKit
import Foundation

class AppBasicDetailCell: UICollectionViewCell {
   
    @IBOutlet weak var appPriceImageStrip: UIImageView!
    @IBOutlet weak var appIconImageView: UIImageView!
    
    @IBOutlet weak var appCategoryLabel: UILabel!
    @IBOutlet weak var appNameLabel: UILabel!
    
    // MARK - populate the collection cell
    
    func populateAppBasicDetailCell(appBasicDetail: AppBasicDetail) {
        self.appNameLabel.text = appBasicDetail.appName
        self.appCategoryLabel.text = appBasicDetail.appCategory
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), { () -> Void in
            var imageData =  NSData(contentsOfURL: NSURL(string: appBasicDetail.appIconImageURL!)!)
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.appIconImageView.image = UIImage(data: imageData!)
            })
        })
    }
    
    // MARK - priavte methods
    private func loadImageOnPriceImageStrip(appCost: NSNumber) {
        // function checks
        if(appCost.integerValue > 0) {
            self.createAndAddPriceLabel(1)
        }
    }
    
    private func createAndAddPriceLabel(isFree: NSNumber) {
        if isFree.boolValue {
            
        }
        else {
            
        }
    }
    
}
