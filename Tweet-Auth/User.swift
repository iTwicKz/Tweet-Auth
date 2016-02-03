//
//  User.swift
//  Tweet-Auth
//
//  Created by Takashi Wickes on 2/2/16.
//  Copyright © 2016 Takashi Wickes. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String?
    var screenName: String?
    var profileImageURL: String?
    var tagLine: String?
    var dictionary: NSDictionary
    
    init(dictionary: NSDictionary) {
        self.dictionary = dictionary
        
        name = dictionary["name"] as? String
        screenName = dictionary["screen_name"] as? String
        profileImageURL = dictionary["profile_image_url"] as? String
        tagLine = dictionary["description"] as? String
    }
    
    
}
