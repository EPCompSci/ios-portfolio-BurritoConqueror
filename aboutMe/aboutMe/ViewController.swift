//
//  ViewController.swift
//  aboutMe
//
//  Created by 90302781 on 9/12/18.
//  Copyright © 2018 90302781. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func rickButton(_ sender: UIButton) {
        Image.image = #imageLiteral(resourceName: "IMG_0349")
    }
    
    @IBAction func ePGame(_ sender: UIButton) {
        Image.image = #imageLiteral(resourceName: "IMG_0457")
    }
    
    @IBAction func fatNoah(_ sender: UIButton) {
        Image.image = #imageLiteral(resourceName: "IMG_0437")
    }
    
    @IBAction func noahPokemonGo(_ sender: UIButton) {
        Image.image = #imageLiteral(resourceName: "IMG_0389")
    }
    
    
  


}

