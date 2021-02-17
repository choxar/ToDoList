//
//  AppereanceViewController.swift
//  TodoList
//
//  Created by elina.zambere on 14/02/2021.
//

import UIKit

class AppereanceViewController: UIViewController {
    
    var DarkOn = Bool()
    var LightOn = Bool()
    
    @IBOutlet weak var DarkSwitch: UISwitch!
    @IBOutlet weak var LightSwitch: UISwitch!
    
    let defaults = UserDefaults.standard
    let window = UIApplication.shared.keyWindow
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detectMode()
    }
    
    
    func detectMode(){
        if self.traitCollection.userInterfaceStyle == .dark {
            print("dark mode")
            DarkSwitch.isOn = true
            LightSwitch.isOn = false
            
        }else{
            DarkSwitch.isOn = false
            LightSwitch.isOn = true
            print("light mode")
        }
    }
    
    @IBAction func DarkAction(_ sender: UISwitch) {
        DarkSwitch.isOn = true
        LightSwitch.isOn = false
        window?.overrideUserInterfaceStyle = .dark
        defaults.set(sender.isOn, forKey: "DarkSwitch")
        defaults.removeObject(forKey: "LightSwitch")
    }
    
    @IBAction func LightAction(_ sender: UISwitch) {
        DarkSwitch.isOn = false
        LightSwitch.isOn = true
        window?.overrideUserInterfaceStyle = .light
        defaults.set(sender.isOn, forKey: "LightSwitch")
        defaults.removeObject(forKey: "DarkSwitch")
    }
    
    
    
    
}


