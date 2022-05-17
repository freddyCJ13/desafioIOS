//
//  ViewModelList.swift
//  Desafio
//
//  Created by Franklin Campos on 16/05/22.
//

import Foundation

class ViewModelList{
    
    var dataRefresh = { () -> () in }
    
    var filmsData: [FilmsModel] = [] {
        didSet {
            dataRefresh()
        }
    }
    
    func DataList(){
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/upcoming?page=1&api_key=f46b58478f489737ad5a4651a4b25079") else {
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let json = data else { return }
            
            do {
                let decoder  = JSONDecoder()
                self.filmsData = try decoder.decode([FilmsModel].self, from: json)
            } catch let error {
                print("Se ha presentando un error: \(error.localizedDescription)")
            }
        }.resume()
    }
    
}
