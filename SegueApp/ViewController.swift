//
//  ViewController.swift
//  SegueApp
//
//  Created by Nurşah on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""
    @IBOutlet weak var name: UITextField!
    //life cycle
    override func viewDidLoad() {//uygulama ilk açıldığında çalışır. sayfalar arasında geçiş yaparken çalışmaz
        super.viewDidLoad()
        print("view did load")
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {// sayfa açıldıktan sonra
        print("view did appear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    override func viewWillAppear(_ animated: Bool) {// sayfa açılmadan önce
        print("view will appear")
        name.text = ""
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view did disappear")
    }

    @IBAction func nextClicked(_ sender: Any) {
        userName = name.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

