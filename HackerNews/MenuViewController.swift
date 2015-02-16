//
//  MenuViewController.swift
//  HackerNews
//
//  Created by Jason Cabot on 15/02/2015.
//  Copyright (c) 2015 Jason Cabot. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let id = segue.identifier {
            switch id {

            case "FrontPage":
                (segue.destinationViewController as StoryListViewController).storiesSource.type = StoryType.FrontPage

            case "New":
                (segue.destinationViewController as StoryListViewController).storiesSource.type = StoryType.New
                
            case "Show":
                (segue.destinationViewController as StoryListViewController).storiesSource.type = StoryType.Show
                
            case "Ask":
                (segue.destinationViewController as StoryListViewController).storiesSource.type = StoryType.Ask
                
            default:
                break
            
            }
        }
    }
}