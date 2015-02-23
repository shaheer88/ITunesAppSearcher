//
//  AppBasicDetail.swift
//  iTunesAppSearcher
//
//  Created by qbuser on 23/02/15.
//  Copyright (c) 2015 Muhammed Shaheer. All rights reserved.
//

import UIKit

class AppBasicDetail: NSObject {
   
    var appName: NSString?
    var appCategory: NSString?
    var appIconImageURL: NSString?
    var appPrice: NSNumber?
    
    // MARK: initialization for the modal valuses
    func initAppBasicDetailFromDictionary(appDetailDictionary: NSDictionary) -> AppBasicDetail {
        self.appName = appDetailDictionary[APP_NAME_KEY] as? NSString
        self.appCategory = appDetailDictionary[APP_CATEGORY_KEY] as? NSString
        self.appIconImageURL = appDetailDictionary[APP_ICON_URL_KEY] as? NSString
        self.appPrice = appDetailDictionary[APP_COST_KEY] as? NSNumber
        return self
    }
}
