//
//  NewFeed.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/25/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class NewFeed: UIViewController {

    @IBOutlet weak var newLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var imageLabel = ""
    var gameImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newLabel.text = imageLabel
        imageView.image = UIImage(named: gameImage)
        
    }
    @IBAction func backBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
