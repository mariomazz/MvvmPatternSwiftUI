//
//  PostsViewModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import Foundation
import UIKit


class PostsScreenController: ObservableObject {
    private var service =  PostsService()
    @Published var posts : [PostDto] = []
    init(){
        self.loadPosts();
    }
    
    func reloadPosts(){
        loadPosts()
    }
    
    private func loadPosts() {
        service.posts().done { data in
            self.posts = data
        }.catch { error in
            //…
        }
    }
}
