//
//  ViewController.swift
//  MiraclePills
//
//  Created by Brett Foreman on 12/30/16.
//  Copyright © 2016 Brett Foreman. All rights reserved.
//

import UIKit
                                        // Added protocols
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var enterZipTextField: UITextField!
    @IBOutlet weak var pillImageView: UIImageView!
    @IBOutlet weak var miraclePillsLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var streetAddressLbl: UILabel!
    @IBOutlet weak var enterAddressTextField: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var enterCityTextLbl: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var midLineIntersection: UIView!
    
    
    @IBOutlet var superViewBoard: UIView!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var viewBuySuccess: UIView!
    @IBOutlet weak var successIndicatorImage: UIImageView!
    
    
    
    @IBOutlet weak var successImage: UILabel!
        let states = ["California", "Alaska", "Hawaii", "Arkansas", "New Mexico", "New York"]
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self // called on behalf of something else...
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        zipLabel.isHidden = true
        enterZipTextField.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        pillImageView.isHidden = true
        miraclePillsLbl.isHidden = true
        priceLbl.isHidden = true
        fullNameLbl.isHidden = true
        enterNameTextField.isHidden = true
        streetAddressLbl.isHidden = true
        enterAddressTextField.isHidden = true
        cityLbl.isHidden = true
        enterCityTextLbl.isHidden = true
        stateLbl.isHidden = true
        statePickerBtn.isHidden = true
        statePicker.isHidden = true
        zipLabel.isHidden = true
        enterZipTextField.isHidden = true
        buyNowBtn.isHidden = true
        midLineIntersection.isHidden = true
        
        viewBuySuccess.isHidden = false
        successIndicatorImage.isHidden = false
        
    }
    
    
    // How many components (kind of like a column) /Users/BrettForeman/Downloads/MiraclePill-Assets/buyNowBtn.pngwill we put in the picker...
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // How many rows per component, based on the states...
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // needs a title for the row, gives a row and component for that row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row] // row is an Int, that will be called...
    }
    
    // This is what happens when you select a row...it grabs the row out of the array and sets it onto the button... This was a known and filed bug...  State button pressed we hide the picker and then show the title...
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        //UIControlState.normal
        
        statePicker.isHidden = true
        zipLabel.isHidden = false
        enterZipTextField.isHidden = false
        
    }
    
   
}



