//
//  StarViewController.swift
//  IntergalacticTravel
//
//  Created by Howard Coulter on 6/25/19.
//  Copyright © 2019 Howard Coulter. All rights reserved.


//this is the landing page with the images of the stars the info below tells what images to be shown when true or false depending on what is pressed on ViewController`

import UIKit

class StarViewController: UIViewController
{

    
    @IBOutlet weak var imageView: UIImageView!
    var blueWasPressed:Bool!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if blueWasPressed {
            imageView.image = UIImage (named: "blue\(Int.random(in:1...3))")
        } else {
            imageView.image = UIImage (named: "red\(Int.random(in:1...3))")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
