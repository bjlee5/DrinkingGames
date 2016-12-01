//
//  ClassicVC.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/25/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class ClassicVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var classicCategories = [Category]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let p2 = Category(imageURL1: "Cards.png", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Beer Pong")
        let p3 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Bullshit")
        let p4 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Drunk Driver")
        let p5 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Flip Cup")
        let p6 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Hockey")
        let p7 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Kings Cup")
        
        
        classicCategories.append(p2)
        classicCategories.append(p3)
        classicCategories.append(p4)
        classicCategories.append(p5)
        classicCategories.append(p6)
        classicCategories.append(p7)

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classicCategories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ClassicCell", for: indexPath) as! CellView
        
        let item = classicCategories[indexPath.row]
        
        cell.labelView.text = item.catTitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newCatPick = classicCategories[indexPath.row]
        let newVC:NewFeed = self.storyboard?.instantiateViewController(withIdentifier: "NewFeed") as! NewFeed
        
        newVC.imageLabel = newCatPick.catTitle
        newVC.gameImage = newCatPick.imageURL1
        
        self.present(newVC, animated: true, completion: nil)
        
    }
    
}

