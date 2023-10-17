//
//  Post.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import Foundation

class Post :Codable,Identifiable{
    
    init(userId: Int, id: Int, title: String, body: String){
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
    
    let userId : Int
    let id : Int
    let title : String
    let body : String
    
}



