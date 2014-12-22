//
//  ParallaxTableViewController.swift
//  TableViewParallax
//
//  Created by Michael Teeuw on 12/12/14.
//  Copyright (c) 2014 Michael Teeuw. All rights reserved.
//

import UIKit
import CoreImage

class ParallaxTableViewController: UITableViewController {
    
    // Create the UIImageView
    let imageView = UIImageView()
    
    // Set the factor for the parallaxEffect. This is overwritable.
    var parallaxFactor:CGFloat = 2
    
    // Set the default height for the image on the top.
    var imageHeight:CGFloat = 300 {
        didSet {
            moveImage()
        }
    }
    
    // Initialize the scrollOffset varaible.
    var scrollOffset:CGFloat = 0 {
        didSet {
            moveImage()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the contentInset to make room for the image.
        self.tableView.contentInset = UIEdgeInsets(top: imageHeight, left: 0, bottom: 0, right: 0)

        // Change the contentMode for the ImageView.
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        
        // Add the imageView to the TableView and send it to the back.
        view.addSubview(imageView)
        view.sendSubviewToBack(imageView)
    }

    override func viewDidLayoutSubviews() {
        
        // Update the image position after layout changes.
        moveImage()
    }
    
    // Define method for image location changes.
    func moveImage() {
        let imageOffset = (scrollOffset >= 0) ? scrollOffset / parallaxFactor : 0
        let imageHeight = (scrollOffset >= 0) ? self.imageHeight : self.imageHeight - scrollOffset
        imageView.frame = CGRect(x: 0, y: -imageHeight + imageOffset, width: view.bounds.width, height: imageHeight)
    }


    // MARK: - UIScrollView delegate

    
    // Update scrollOffset on tableview scroll
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        scrollOffset = tableView.contentOffset.y + imageHeight
    }

}
