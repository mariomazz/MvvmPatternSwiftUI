//
//  PostsModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 17/10/23.
//

import Foundation
import PromiseKit

class PostsModel {
    
    func loadPosts() -> Promise<[Post]>{
        return Promise<[Post]>.init(resolver: { resolver in

            guard let url = URL(string: "\(Env.apiUrlJsonPlaceholder)posts") else {
                return resolver.reject(HttpError());
            }

            URLSession.shared.dataTask(with: url) { data, response, error in
                let fromServerPost = try! JSONDecoder().decode([Post].self, from: data!)
                resolver.fulfill(fromServerPost)
            }.resume();

        });
    }
        
    func loadPost(postId:Int) -> Promise<Post>{
        return Promise<Post>.init(resolver: { resolver in

            guard let url = URL(string: "\(Env.apiUrlJsonPlaceholder)posts/\(postId)") else {
                return resolver.reject(HttpError());
            }

            URLSession.shared.dataTask(with: url) { data, response, error in
                let fromServerPost = try! JSONDecoder().decode(Post.self, from: data!)
                resolver.fulfill(fromServerPost)
            }.resume();

        });
    }
    
}


