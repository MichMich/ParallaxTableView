//
//  ExampleParallaxTableViewViewController.swift
//  TableViewParallax
//
//  Created by Michael Teeuw on 22-12-14.
//  Copyright (c) 2014 Michael Teeuw. All rights reserved.
//

import UIKit

class ExampleParallaxTableViewViewController: ParallaxTableViewController {

    // Define a list of strings for use in this example.
    let tableRowStrings = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        "Cras fermentum est vehicula, pharetra nibh id, scelerisque risus.",
        "Vivamus consectetur lacus id nisi pretium, ac malesuada eros ultricies.",
        "Aliquam eget dui ut massa semper scelerisque.",
        "Sed et dui varius, efficitur dolor sed, laoreet nisi.",
        "Nulla quis elit rhoncus, suscipit mauris vitae, bibendum augue.",
        "Morbi lacinia quam nec velit pretium auctor.",
        "Nam volutpat elit sollicitudin elit facilisis condimentum.",
        "Vestibulum ut eros ut velit rutrum laoreet ut et leo.",
        "Nulla a massa et felis semper mattis.",
        "Fusce fringilla est eleifend arcu porta porta.",
        "Aliquam laoreet massa ut urna mattis, vitae lobortis risus semper.",
        "Morbi aliquam lorem vel ex dictum iaculis sed a diam.",
        "Nunc facilisis libero id commodo fermentum.",
        "Donec ut nulla eget mi mattis hendrerit.",
        "Integer nec tellus ut quam luctus tempor.",
        "Aenean ullamcorper ipsum mollis risus sollicitudin maximus.",
        "Maecenas cursus eros in ullamcorper luctus.",
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set the image:
        self.imageView.image = UIImage(named: "image.jpg")

        
        // Set the appearance of the tableView
        self.view.backgroundColor = UIColor.blackColor()
        self.tableView.separatorColor = UIColor(white: 0.25, alpha: 1)
        
    }
    
    // Hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    // MARK: - tableView Data Source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableRowStrings.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        
        // Fill cell and change appearance.
        
        cell.textLabel?.text = tableRowStrings[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.backgroundColor = UIColor.blackColor()
        
        return cell
    }

    
}
