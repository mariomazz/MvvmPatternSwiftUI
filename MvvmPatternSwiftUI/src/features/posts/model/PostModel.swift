//
//  PostModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import Foundation

//
//  PostsModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 17/10/23.
//

import Foundation

class PostModel{
   
    private var post : Post?=nil;
    
    func loadPost(postId:Int) ->Void{
        
        guard let url = URL(string: "\(Env.apiUrlJsonPlaceholder)posts/\(postId)") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let fromServerPost = try! JSONDecoder().decode(Post.self, from: data!)
            DispatchQueue.main.async {
                self.post = fromServerPost;
            }
        }.resume();
        
    }
    
}
