//
//  ViewController.swift
//  Desafio
//
//  Created by Franklin Campos on 14/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet var password: UIView!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginNext(self)
    }

    @IBAction func loginNext(_ sender: Any) {
        
    }
    
}

