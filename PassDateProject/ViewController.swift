//
//  ViewController.swift
//  PassDateProject
//
//  Created by Сергей Медведев on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var resultlabel: UILabel!
     
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMailScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return  }
        self.resultlabel.text = svc.label.text
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let  dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
}

