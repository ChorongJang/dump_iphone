//
//  VC_ConnectMenu.swift
//  Dron
//
//  Created by JangChorong on 2016. 4. 20..
//  Copyright © 2016년 TwoEngineer. All rights reserved.
//

import UIKit

class VC_ConnectMenu: UIViewController {

    @IBAction func btn_dron_select(sender: AnyObject) {
    }
    
    @IBAction func btn_bluetooth(sender: AnyObject) {
    }
    
    @IBAction func btn_wifi(sender: AnyObject) {
    }
    
    @IBAction func btn_trimming(sender: AnyObject) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func setOnClickListener_back(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
