//
//  tvVC.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/23/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class tvVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tvCategories = [Category]()
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Archer")
        let p2 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Big Bang Theory")
        let p3 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Breaking Bad")
        let p4 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Dexter")
        let p5 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Family Guy")
        let p6 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Game of Thrones")
        let p7 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Girls")
        let p8 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "House")
        let p9 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "How I Met Your Mother")
        let p10 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Mad Men")
        let p11 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "South Park")
        let p12 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Supernatural")
        let p13 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Walking Dead")
        
        tvCategories.append(p1)
        tvCategories.append(p2)
        tvCategories.append(p3)
        tvCategories.append(p4)
        tvCategories.append(p5)
        tvCategories.append(p6)
        tvCategories.append(p7)
        tvCategories.append(p8)
        tvCategories.append(p9)
        tvCategories.append(p10)
        tvCategories.append(p11)
        tvCategories.append(p12)
        tvCategories.append(p13)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tvCategories.count
    }
    

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = self.tableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath) as! CellView
    
    let item = tvCategories[indexPath.row]
    
    cell.labelView.text = item.catTitle
    
    return cell
    
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newCatPick = tvCategories[indexPath.row]
        let newVC:NewFeed = self.storyboard?.instantiateViewController(withIdentifier: "NewFeed") as! NewFeed
        
        newVC.imageLabel = newCatPick.catTitle
        newVC.gameImage = newCatPick.imageURL1
        
        self.present(newVC, animated: true, completion: nil)
        
    }
    
}
