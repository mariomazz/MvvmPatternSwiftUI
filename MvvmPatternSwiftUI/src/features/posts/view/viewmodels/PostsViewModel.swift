//
//  PostsViewModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import Foundation
import UIKit


class PostsViewModel: ObservableObject {
    private var postsModel =  PostsModel()
    @Published var posts : [Post] = []
    init(){
        
    }
    
    func loadPosts() {
        postsModel.loadPosts().done { data in
            self.posts = data
        }.catch { error in
            //…
        }
    }
}
