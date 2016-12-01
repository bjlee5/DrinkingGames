//
//  SportsVC.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/23/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class SportsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var sportsCategories = [Category]()

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Baseball")
        let p2 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Basketball")
        let p3 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Hockey")
        let p4 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Football")
        let p5 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Soccer")
        let p6 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Golf")

        sportsCategories.append(p1)
        sportsCategories.append(p2)
        sportsCategories.append(p3)
        sportsCategories.append(p4)
        sportsCategories.append(p5)
        sportsCategories.append(p6)

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsCategories.count
    }
    


func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = self.tableView.dequeueReusableCell(withIdentifier: "SportsCell", for: indexPath) as! CellView
    
    let item = sportsCategories[indexPath.row]
    
    cell.labelView.text = item.catTitle
    
    return cell
    
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newCatPick = sportsCategories[indexPath.row]
        let newVC:NewFeed = self.storyboard?.instantiateViewController(withIdentifier: "NewFeed") as! NewFeed
        
        newVC.imageLabel = newCatPick.catTitle
        newVC.gameImage = newCatPick.imageURL1
        
        self.present(newVC, animated: true, completion: nil)
        
    }
    
}



