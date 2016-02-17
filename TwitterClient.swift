//
//  TwitterClient.swift
//  Twitter
//
//  Created by Zach Glick on 2/16/16.
//  Copyright © 2016 Zach Glick. All rights reserved.
//

import UIKit
import BDBOAuth1Manager

let twitterConsumerKey = "UDulHemH8fNlJTvq1jU9xkePI"
let twitterConsumerSecret = "9kpSUJBfxUqG2eyTtBMWH3b5Zw6yLBlyZQ4jffOkucvPTENbdd"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1SessionManager {
    
    class var sharedInstance : TwitterClient{
        struct Static{
            static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)
        }
        return Static.instance
        
    }

}
