//
//  FilmsModel.swift
//  Desafio
//
//  Created by Franklin Campos on 16/05/22.
//

import Foundation

class FilmsModel: Decodable {
    
    let original_title: String
    let poster_path: String
    let vote_average: Int
    let release_date: String
    let overview: String
    
}
