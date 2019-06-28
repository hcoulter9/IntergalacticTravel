//
//  ViewController.swift
//  IntergalacticTravel
//
//  Created by Howard Coulter on 6/25/19.
//  Copyright © 2019 Howard Coulter. All rights reserved.
//

//this is the page with the buttons

import UIKit

class ViewController: UIViewController
{
    //
    var blueButtonPressed:Bool = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        blueButtonPressed = false
    }
    
    @IBAction func blueDwarfPressed(_ sender: UIButton)
    {
blueButtonPressed = true
   performSegue(withIdentifier: "SegToStarVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextViewController = segue.destination as! StarViewController
        nextViewController.blueWasPressed = blueButtonPressed
        
    }
//below unwinds the wind up from the previous page-basically resetting to its original state (moving button to Exit)
    
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){    }
    

}

