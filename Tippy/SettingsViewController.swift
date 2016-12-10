//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Avinash Singh on 09/12/16.
//  Copyright © 2016 Avinash Singh. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    let tipPercentages = [0.18, 0.2, 0.25]
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = Foundation.UserDefaults.standard
        let tipValue = defaults.integer(forKey: "default_tip_percentage")
        tipControl.selectedSegmentIndex = tipValue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeDefault(_ sender: Any) {
        valueUpdated(self)
    }
    
    func valueUpdated(_ sender: Any) {
        let defaults = Foundation.UserDefaults.standard
        defaults.set(tipControl.selectedSegmentIndex, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
