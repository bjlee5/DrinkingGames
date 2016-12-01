//
//  CatCell.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/23/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class CatCell: UITableViewCell {

    @IBOutlet weak var catLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func updateUI(category: Category) {
        catLabel.text = category.catTitle
        
    }
}
