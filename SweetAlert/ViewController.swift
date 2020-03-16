//
//  ViewController.swift
//  SweetAlert
//
//  Created by Codester on 11/3/14.
//  Copyright (c) 2014 Codester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alert = SweetAlertObjc()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 242.0/255.0, green: 244.0/255.0, blue: 246.0/255.0, alpha: 1.0)
    }
    
    override func viewDidAppear(_ animated: Bool) {


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func aBasicMessageAlert(_ sender: AnyObject) {
        _ = SweetAlertObjc().showAlert("Here's a message!")
    }
    

    @IBAction func subtitleAlert(_ sender: AnyObject) {
    
        _ = SweetAlertObjc().showAlert("Here's a message!", subTitle: "It's pretty, isn't it?", style: SweetAlertObjc.None)
    }
    
    @IBAction func sucessAlert(_ sender: AnyObject) {
        _ = SweetAlertObjc().showAlert("Good job!", subTitle: "You clicked the button!", style: SweetAlertObjc.Success)
    }
    
    @IBAction func warningAlert(_ sender: AnyObject) {
        _ = SweetAlertObjc().showAlert("Are you sure?", subTitle: "You file will permanently delete!", style: SweetAlertObjc.Warning, buttonTitle:"Cancel", buttonColor:UIColor.colorFromRGB(0xD0D0D0) , otherButtonTitle:  "Yes, delete it!", otherButtonColor: UIColor.colorFromRGB(0xDD6B55)) { (isOtherButton) -> Void in
            if isOtherButton == true {
            
                print("Cancel Button  Pressed", terminator: "")
            }
            else {
                 _ = SweetAlertObjc().showAlert("Deleted!", subTitle: "Your imaginary file has been deleted!", style: SweetAlertObjc.Success)
            }
        }
    }
    
    @IBAction func cancelAndConfirm(_ sender: AnyObject) {
        _ = SweetAlertObjc().showAlert("Are you sure?", subTitle: "You file will permanently delete!", style: SweetAlertObjc.Warning, buttonTitle:"No, cancel plx!", buttonColor:UIColor.colorFromRGB(0xD0D0D0) , otherButtonTitle:  "Yes, delete it!", otherButtonColor: UIColor.colorFromRGB(0xDD6B55)) { (isOtherButton) -> Void in
            if isOtherButton == true {
                
                _ = SweetAlertObjc().showAlert("Cancelled!", subTitle: "Your imaginary file is safe", style: SweetAlertObjc.Error)
            }
            else {
                _ = SweetAlertObjc().showAlert("Deleted!", subTitle: "Your imaginary file has been deleted!", style: SweetAlertObjc.Success)
            }
        }

    }
    
    @IBAction func customIconAlert(_ sender: AnyObject) {
        _ = SweetAlertObjc().showAlert("Sweet!", subTitle: "Here's a custom image.", style: "thumb.jpg")
    }
    
}

