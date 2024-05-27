//
//  PostViewModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import Foundation
import UIKit


class PostDetailScreenController: ObservableObject {
    private var service =  PostsService()
    private let postId:Int;
    @Published var post : PostDto?;
    init(postId: Int){
        self.postId = postId;
        self.loadPost();
    }
    
    
    
    private func loadPost() {
        service.post(postId: postId).done { data in
            self.post = data
        }.catch { error in
            //…
        }
    }
    
    
    func reloadPost(){
        loadPost()
    }
    
}
