//
//  MoviesVC.swift
//  DrinkingGames
//
//  Created by MacBook Air on 11/23/16.
//  Copyright © 2016 Lee's. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var movieCategories = [Category]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let p1 = Category(imageURL1: "AmericanHorrorStory.jpg", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "American Horror Story")
        let p2 = Category(imageURL1: "BridesMaids.jpg", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Brides Maids")
        let p3 = Category(imageURL1: "Elf.jpg", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "https://www.buzzfeed.com/chelseabrown/christmas-drinking-games?utm_term=.lwJGLoLWY#.cck6737KA", catTitle: "Elf")
        let p4 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Fast Times at Ridgemont High")
        let p5 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Fear and Loathing in Las Vegas")
        let p6 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Jurassic Park")
        let p7 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Les Miserables")
        let p8 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "National Lampoon's Animal House")
        let p9 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Old School")
        let p10 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Reservoir Dogs")
        let p11 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Rush Hour")
        let p12 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Scarface")
        let p13 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Scott Pilgrim vs. the World")
        let p14 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Swingers")
        let p15 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Big Lebowski")
        let p16 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Fast and the Furious")
        let p17 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Great Gatsby")
        let p18 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Hangover")
        let p19 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Lord of the Rings")
        let p20 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Lost Boys")
        let p21 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The Matrix")
        let p22 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "The World of Wall Street")
        let p23 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "Wedding Crashers")
        let p24 = Category(imageURL1: "", imageURL2: "", imageURL3: "", imageURL4: "", imageURL5: "", catTitle: "X-Men Triology")
        
        movieCategories.append(p1)
        movieCategories.append(p2)
        movieCategories.append(p3)
        movieCategories.append(p4)
        movieCategories.append(p5)
        movieCategories.append(p6)
        movieCategories.append(p7)
        movieCategories.append(p8)
        movieCategories.append(p9)
        movieCategories.append(p10)
        movieCategories.append(p11)
        movieCategories.append(p12)
        movieCategories.append(p13)
        movieCategories.append(p14)
        movieCategories.append(p15)
        movieCategories.append(p16)
        movieCategories.append(p17)
        movieCategories.append(p18)
        movieCategories.append(p19)
        movieCategories.append(p20)
        movieCategories.append(p21)
        movieCategories.append(p22)
        movieCategories.append(p23)
        movieCategories.append(p24)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieCategories.count
    }
    

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = self.tableView.dequeueReusableCell(withIdentifier: "MoviesCell", for: indexPath) as! CellView
    
    let item = movieCategories[indexPath.row]
    
    cell.labelView.text = item.catTitle
    
    return cell
    
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newCatPick = movieCategories[indexPath.row]
        let newVC:NewFeed = self.storyboard?.instantiateViewController(withIdentifier: "NewFeed") as! NewFeed
        
        newVC.imageLabel = newCatPick.catTitle
        newVC.gameImage = newCatPick.imageURL1
        
        self.present(newVC, animated: true, completion: nil)
        
    }
    
}
