//
//  VC_SettingMenu.swift
//  Dron
//
//  Created by JangChorong on 2016. 4. 20..
//  Copyright © 2016년 TwoEngineer. All rights reserved.
//

import UIKit

class VC_SettingMenu: UIViewController {

    @IBOutlet weak var btn_sensitivity: UIButton!

    override func viewDidLoad() {
        
        super.viewDidLoad()
 
        var buttonImage = UIImage(named: "set_icon_alert");
        let bsize = CGSizeMake(50 , 50)
  
        btn_sensitivity?.backgroundColor = UIColor.lightGrayColor()
        btn_sensitivity?.setTitle(" Sensitivity", forState: UIControlState.Normal)
        
        buttonImage = imageResize(buttonImage!,sizeChange: bsize)
        
        btn_sensitivity?.setImage(buttonImage, forState: UIControlState.Normal)
        // Handle button being tapped

       // var _height = btn_sensitivity.frame.size.height;
       // var _width = btn_sensitivity.frame.size.width;
        
        btn_sensitivity.titleEdgeInsets = UIEdgeInsetsMake(0
            , 0, 0, 0)
        btn_sensitivity.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        
        /*btn_sensitivity.titleEdgeInsets = UIEdgeInsetsMake(buttonImage!.size.height , -buttonImage!.size.width - 35, 0   , 0)
        btn_sensitivity.imageEdgeInsets = UIEdgeInsetsMake(-buttonImage!.size.height + 20, buttonImage!.size.width, 0  , 0)*/
        
        
        // Add the button so it's part of the view
        self.view.addSubview(btn_sensitivity!)

    }
    
  
    func imageResize (image:UIImage, sizeChange:CGSize)-> UIImage{
        
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        image.drawInRect(CGRect(origin: CGPointZero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        return scaledImage
    }

    
    @IBAction func setOnClickBack(sender: AnyObject) {
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
