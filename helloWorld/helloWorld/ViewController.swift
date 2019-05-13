//
//  ViewController.swift
//  helloWorld
//
//  Created by Elise Pope on 5/12/19.
//  Copyright © 2019 Practicing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        // Do any additional setup after loading the view.
    }
    
    func assignbackground(){
        let background = UIImage(named: "blue.jpeg")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    @IBAction func showPhoto(_ sender: UIButton) {
        alert(title:"Surprise", message:"This is the surprise.")
    }
    
    func alert(title:String, message:String){
        // Create the alert controller
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            UIAlertAction in
            NSLog("OK Pressed")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) {
            UIAlertAction in
            NSLog("Cancel Pressed")
        }
        
        // Add the actions
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        var imageView = UIImageView(frame: CGRect(x: 220, y: 10, width: 40, height: 40))
        var image = UIImage(named:"smiley.png")
        imageView.image = image
        
        alertController.view.addSubview(imageView)
        // Present the controller
        self.present(alertController, animated: true, completion: nil)
    }

}

