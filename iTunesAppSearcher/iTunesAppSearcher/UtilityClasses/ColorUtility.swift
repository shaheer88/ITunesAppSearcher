//
//  ColorUtility.swift
//  iTunesAppSearcher
//
//  Created by qbuser on 21/02/15.
//  Copyright (c) 2015 Muhammed Shaheer. All rights reserved.
//

import UIKit
import Foundation

private let SharedColorUtility = ColorUtility()

class ColorUtility: NSObject {
    
    var colorListArray = NSArray()
    
    // declaring and defining a singleton instance of the class.
    // Obj C dispatch may also be used. Bit using Class Constant look appropriate
    //TODO: found this is not actually singleton method. Implement actual singleton.
    class var sharedColorUtility: ColorUtility {
        let appBundle = NSBundle.mainBundle()
        var plistPath = appBundle.pathForResource(COLOR_PLIST, ofType:PLIST)
        SharedColorUtility.colorListArray = NSArray(contentsOfFile:plistPath!)!
        return SharedColorUtility;
    }
    
    func getColorNamed(colorName: String) -> UIColor {
    
        var predicate = NSPredicate(format: "colorName ==\(colorName) ", argumentArray: nil)
        print(predicate.predicateFormat)
        //TODO: Uncomment and USe the predicate code and delete the bottom code
        //return self.colorListArray.filteredArrayUsingPredicate(predicate)
        
        ///////////////////////////////////////////////
        // code to be deleted after implementing predicate
        print(ColorUtility.sharedColorUtility.colorListArray)
        for (dict) in self.colorListArray {
            var obj = dict as NSDictionary
            var colorArray = obj[COLOR_RGB_KEY] as NSArray
            var str = obj[COLOR_NAME_KEY] as NSString
            if str.isEqualToString(colorName) {
                var red = CGFloat(colorArray[0] as NSNumber)/255.0
                var green = CGFloat(colorArray[1] as NSNumber)/255.0
                var blue = CGFloat(colorArray[2] as NSNumber)/255.0
                var color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
                return color;
            }
        }
        var col = UIColor(white: 1.0, alpha: 1.0)
        return col
        //////////////////////////////////////////
    }
    
}

