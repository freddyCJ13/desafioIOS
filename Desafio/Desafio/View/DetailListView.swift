//
//  DetailListView.swift
//  Desafio
//
//  Created by Franklin Campos on 14/05/22.
//

import UIKit

class DetailListView: UIViewController {
 
    @IBOutlet weak var imagePhoto: UIImageView!
    @IBOutlet weak var filmTitle: UILabel!
    @IBOutlet var filmNote: UIView!
    @IBOutlet weak var filmDate: UILabel!
    @IBOutlet weak var filmOverview: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Información de la Película"
    }
    
}
