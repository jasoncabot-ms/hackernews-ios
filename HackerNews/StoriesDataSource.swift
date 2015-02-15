//
//  StoriesDataSource.swift
//  HackerNews
//
//  Created by Jason Cabot on 15/02/2015.
//  Copyright (c) 2015 Jason Cabot. All rights reserved.
//

import UIKit

enum StoryType {
    case FrontPage
    case New
    case Show
    case Ask
}

class StoriesDataSource: NSObject, UITableViewDataSource {
    
    var type:StoryType?
    
    func load(type: StoryType) {
        self.type = type
    }
    
    func title() -> String {
        if self.type != nil {
            switch (self.type!) {
            case .FrontPage:
                return "Front Page"
                
            case .New:
                return "New"
                
            case .Show:
                return "Show HN"
                
            case .Ask:
                return "Ask HN"
                
            }
        }
        
        return "Stories"
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("StoryCellIdentifier", forIndexPath: indexPath) as UITableViewCell

        if self.type != nil {
            switch (self.type!) {

            case .FrontPage:
                cell.textLabel?.text = "Front Page Story"
                
            case .New:
                cell.textLabel?.text = "New Story"
                
            case .Show:
                cell.textLabel?.text = "Show Story"
                
            case .Ask:
                cell.textLabel?.text = "Ask Story"
                
            default:
                cell.textLabel?.text = "Unknown Story"
                
            }
        }
        
        return cell;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func findStory(index:Int) -> Story {
        return Story();
    }
    
}
