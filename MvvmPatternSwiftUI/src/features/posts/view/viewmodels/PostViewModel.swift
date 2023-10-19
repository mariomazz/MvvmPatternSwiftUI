//
//  PostViewModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import Foundation
import UIKit


class PostViewModel: ObservableObject {
    private var postsModel =  PostsModel()
    private let postId:Int;
    @Published var post : Post?;
    init(postId: Int){
        self.postId = postId;
    }
    
    func loadPost() {
        postsModel.loadPost(postId: postId).done { data in
            self.post = data
        }.catch { error in
            //…
        }
    }
}
