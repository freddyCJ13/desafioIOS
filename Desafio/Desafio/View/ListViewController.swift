//
//  ListViewController.swift
//  Desafio
//
//  Created by Franklin Campos on 14/05/22.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imagePoster: UIImageView!
    
    var toshowModel = ViewModelList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toshowView()
        upload()
    }

    private func toshowView(){
        toshowModel.DataList()
    }
    
    private func upload() {
        toshowModel.dataRefresh = { [weak self] () in }
        DispatchQueue.main.async {
            self?.tableView.reloadData()
        }
    }
    
}
 
extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toshowModel.filmsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        let films = toshowModel.filmsData[indexPath.row]
        cell?.textLabel?.text = films.poster_path
        
        return cell
    }
}
