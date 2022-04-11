//
//  ViewController.swift
//  Pass Data Project
//
//  Created by Павел Яковенко on 04.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var unwindLabel: UILabel!
    
    @IBAction func buttonSegue(_ sender: UIButton) {
    }
    
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue){
        // source - контроллер с которого мы перемещаемся
        guard let svc = segue.source as? SecondViewController else {return}
        unwindLabel.text = svc.label.text
        guard segue.identifier == "unwindSegue" else {return}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        
   
        dvc.login = loginTF.text!
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

}

