//
//  ViewController.swift
//  Dron
//
//  Created by JangChorong on 2016. 3. 27..
//  Copyright © 2016년 TwoEngineer. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //wntjrㄴㅇㄴㅇㅇ

    @IBOutlet weak var btn_connect: UIButton!
    @IBOutlet weak var btn_setting: UIButton!
    
    @IBOutlet weak var lb_speed: UILabel!
    @IBOutlet weak var lb_date: UILabel!
    @IBOutlet weak var lb_battery: UILabel!
    @IBOutlet weak var lb_compass: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initStatebarValue("35KM/H", battery: "56%", compass: "N38.26 E134.23")
    }
    
    
    @IBAction func setOnClickListener_ConnectBtn(sender: AnyObject) {
        
        lb_speed.text   = "clicked"
       
    }
    
    @IBAction func setOnClickListener_SettingBtn(sender: AnyObject) {
    }
    
    func initStatebarValue(speed: String, battery: String, compass: String){
        
        let timestamp = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .ShortStyle, timeStyle: .ShortStyle)

        lb_speed.text   = speed
        lb_date.text    = timestamp
        lb_battery.text = battery
        lb_compass.text = compass
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

