//
//  ViewController.swift
//  MiraclePill
//
//  Created by Nikolas Ponomarov on 22.08.17.
//  Copyright © 2017 Nikolas Ponomarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var labelCounrty: UILabel!
    @IBOutlet weak var textLbCountry: UITextField!
    @IBOutlet weak var labelZipCode: UILabel!
    @IBOutlet weak var textLbZipCode: UITextField!
    @IBOutlet weak var buyButton: UIButton!
    
    let states = ["Alabama", "California", "New York", "Alaska", "Arkansas", "Maine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        labelCounrty.isHidden = true
        textLbCountry.isHidden = true
        labelZipCode.isHidden = true
        textLbZipCode.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        labelCounrty.isHidden = false
        textLbCountry.isHidden = false
        labelZipCode.isHidden = false
        textLbZipCode.isHidden = false
    }
}

