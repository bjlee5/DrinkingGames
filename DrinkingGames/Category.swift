//
//  File.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/23/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import Foundation


class Category {
    
    private var _imageURL1: String!
    private var _imageURL2: String!
    private var _imageURL3: String!
    private var _imageURL4: String!
    private var _imageURL5: String!
    private var _catTitle: String!
    
    var imageURL1: String {
        return _imageURL1
    }
    
    var imageURL2: String {
        return _imageURL2
    }
    
    var imageURL3: String {
        return _imageURL3
    }
    
    var imageURL4: String {
        return _imageURL4
    }
    
    var imageURL5: String {
        return _imageURL5
    }
    
    var catTitle: String {
        return _catTitle
    }
    
    init(imageURL1: String, imageURL2: String, imageURL3: String, imageURL4: String, imageURL5: String, catTitle: String) {
    
    _imageURL1 = imageURL1
    _imageURL2 = imageURL2
    _imageURL3 = imageURL3
    _imageURL4 = imageURL4
    _imageURL5 = imageURL5
    _catTitle = catTitle
        
    
    }

}
