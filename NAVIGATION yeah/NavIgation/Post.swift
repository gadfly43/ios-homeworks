//
//  Post.swift
//  NavIgation
//
//  Created by Anna Ovodova on 28.03.2022.
//

import UIKit
    
struct Posts: Equatable {
    let author, description, image, id: String
    var likes, views: Int
}

var dataSource: [Posts] = []
