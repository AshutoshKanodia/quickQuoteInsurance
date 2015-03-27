//
//  QuoteViewController.swift
//  quickQuoteInsurance
//
//  Created by Matthew Ghent on 26/03/2015.
//  Copyright (c) 2015 Matthew Ghent. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController, UIPickerViewDelegate {


    @IBOutlet weak var propertyTypeField: UITextField!
    @IBOutlet weak var insuranceTypeField: UITextField!
    @IBOutlet weak var bedroomField: UITextField!
    @IBOutlet weak var bathroomField: UITextField!
    @IBOutlet weak var doYouOwnPropertyField: UITextField!
    
    @IBOutlet weak var propertyYearField: UITextField!
    @IBOutlet weak var bathroomStepper: UIStepper!
    @IBOutlet weak var bedroomStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = UIColor(red: 0xE1/255, green: 0xE1/255, blue: 0xE1/255, alpha: 1.0)
        
        
        //Bedroom stepper setup
        bedroomField.text = "\(Int(bedroomStepper.value))"
        bedroomStepper.addTarget(self, action: "stepperValueDidChange:", forControlEvents: .ValueChanged)
        
        //Bathroom stepper setup
        bathroomField.text = "\(Int(bathroomStepper.value))"
        bathroomStepper.addTarget(self, action: "stepperValueDidChange:", forControlEvents: .ValueChanged)
        
        // Do any additional setup after loading the view.
    }


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func viewTapped(sender : AnyObject) {
        
        propertyTypeField.resignFirstResponder()
        insuranceTypeField.resignFirstResponder()
        bedroomField.resignFirstResponder()
        bathroomField.resignFirstResponder()
        doYouOwnPropertyField.resignFirstResponder()
        propertyYearField.resignFirstResponder()
        
    }
    
   /* func stepperValueDidChange(stepper: UIStepper) {
        
        let bedroomStepperMapping: [UIStepper: UITextField] = [bedroomStepper: bedroomField]
        let bedroomField = Int(stepper.value)
        bedroomStepperMapping[stepper].text = bedroomField.text
        
        let bathroomStepperMapping: [UIStepper: UITextField] = [bathroomStepper: bathroomField]
        let bathroomField = Int(stepper.value)
        bathroomStepperMapping[stepper].text = bathroomField.text
    }*/
    
    // Function to change the values of the input vields when the stepper has been interacted with
    func stepperValueDidChange(stepper: UIStepper) {
        
        if bedroomStepper == stepper{
            bedroomField.text = "\(Int(stepper.value))"}
        if  bathroomStepper == stepper{
            bathroomField.text = "\(Int(stepper.value))"}
        }
    }




