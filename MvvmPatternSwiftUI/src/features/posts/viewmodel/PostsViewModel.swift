//
//  PostsViewModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import Foundation
import UIKit


class PostsViewModel: ObservableObject {
    @Published private var postsModel =  PostsModel()
        
    init(){
    }
    
    func loadPosts(){
        postsModel.loadPosts();
    }
    
    var posts: [Post] {
        return postsModel.posts;
    }
}
