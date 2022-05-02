//
//  Post.swift
//  Navigation
//


import Foundation

struct Posts: Equatable {
    let author, description, image, id: String
    var likes, views: Int
}

var dataSource: [Posts] = []
