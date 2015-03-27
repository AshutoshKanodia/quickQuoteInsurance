//
//  ViewController.swift
//  quickQuoteInsurance
//
//  Created by Matthew Ghent on 26/03/2015.
//  Copyright (c) 2015 Matthew Ghent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.setHidesBackButton(true, animated:true);
        //set the background color to #E1E1E1
        view.backgroundColor = UIColor(red: 0xE1/255, green: 0xE1/255, blue: 0xE1/255, alpha: 1.0)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

