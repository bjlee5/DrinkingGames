//
//  NewVC.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/23/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class NewVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var newCategories = [Category]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = Category(imageURL1: "WalkingDead.jpg", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Walking Dead")
        let p2 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Simpsons")
        let p3 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "South Park")
        let p4 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Donald Trump")
        let p5 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Harry Potter ")
        let p6 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Star Wars")
        
        newCategories.append(p1)
        newCategories.append(p2)
        newCategories.append(p3)
        newCategories.append(p4)
        newCategories.append(p5)
        newCategories.append(p6)
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newCategories.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CellView
        
        let item = newCategories[indexPath.row]
        
        cell.labelView.text = item.catTitle
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newCatPick = newCategories[indexPath.row]
        let newVC:NewFeed = self.storyboard?.instantiateViewController(withIdentifier: "NewFeed") as! NewFeed
        
        newVC.imageLabel = newCatPick.catTitle
        newVC.gameImage = newCatPick.imageURL1
        
        self.present(newVC, animated: true, completion: nil)
        
    }
    
}

