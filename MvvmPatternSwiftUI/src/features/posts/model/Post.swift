//
//  Post.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import Foundation

class Post : Codable,Identifiable{
    
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
