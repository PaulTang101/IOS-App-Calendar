//
//  Lists.swift
//  calendarTest
//
//  Created by Student on 2018-03-08.
//  Copyright © 2018 Guest User. All rights reserved.
//

import UIKit

// 37 dates
var selectedMonth = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]

var subscribedPosts = [Post]()
var displayedPosts = [Post]()

class Post {
    var postTitle: String
    var clubName: String
    var postDate: String
    
    init(postTitle: String, clubName: String, postDate: String) {
        self.postTitle = postTitle
        self.clubName = clubName
        self.postDate = postDate
    }
}
