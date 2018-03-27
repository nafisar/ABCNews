//
//  NewsViewModel.swift
//  ABCNews
//
//  Created by Nafisa Rahman on 3/18/18.
//  Copyright © 2018 com.nafisa. All rights reserved.
//

import Foundation

class NewsViewModel {
    
    //MARK:- Declarations
    var newsFeed : [Item]
    var newsFeedNetworking: NewsFeedNetworking!
    
    
    init(){
        newsFeed = []
        newsFeedNetworking = NewsFeedNetworking()
    }
    
}

extension NewsViewModel {
    
    //MARK:- Get no of sections
    func getNumOfSections() -> Int {
        
        return 2
    }
    
    //MARK:- Get no of rows
    func getNumOfRows(section: Int) -> Int {
        
        if newsFeed.count > 0 {
            
            if section == 1 {
                return newsFeed.count - 1
            }else {
                return 1
            }
        }else {
            return 0
        }
        
    }
    
    //MARK:- Get cell title
    func getCellTitle(row: Int) -> String {
        
        return newsFeed[row].title
    }
    
    //MARK:- Get Cell Publish date
    func getCellPublishDate(row:Int) -> String {
        
        return newsFeed[row].pubDate
    }
    
    //MARK:- Get Cell Image link
    func getCellImageLink(row: Int) -> String {
        
        return newsFeed[row].link
    }
    
    //MARK:- Get cell thumbnail
    func getCellThumbnail(row: Int) -> String {
        
        return newsFeed[row].thumbnail ?? ""
    }
    
    //MARK:- Get news feed
    func getNewsFeed(){
        
        newsFeedNetworking.getFeed()
    }
    
}
