//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Nurşah on 14.11.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = "Name : " + myName
        
    }
    

}
