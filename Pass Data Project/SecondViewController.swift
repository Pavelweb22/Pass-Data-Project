//
//  SecondViewController.swift
//  Pass Data Project
//
//  Created by Павел Яковенко on 04.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

 
    var login: String?
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var goBackTapped: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else {return}
        label.text = "Привет, \(login)!"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    
}
