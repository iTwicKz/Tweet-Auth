//
//  TwitterClient.swift
//  Tweet-Auth
//
//  Created by Takashi Wickes on 2/2/16.
//  Copyright © 2016 Takashi Wickes. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "phd4m6cUJoqNk14kdgpYTcHbj"
let twitterConsumerSecret = "eLCVVgMUO7Ist07H0TFldeyRjHf842d3Gy4ogN0aYh73WncEyb"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {

    class var sharedInstance: TwitterClient {
        struct Static {
            static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)
        }
        
        return Static.instance
    }
}
