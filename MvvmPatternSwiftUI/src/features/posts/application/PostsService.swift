//
//  PostsModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 17/10/23.
//

import Foundation
import PromiseKit

class PostsService {
    
    func posts() -> Promise<[PostDto]>{
        return Promise<[PostDto]>.init(resolver: { resolver in

            guard let url = URL(string: "\(Env.apiUrlJsonPlaceholder)posts") else {
                return resolver.reject(HttpError());
            }

            URLSession.shared.dataTask(with: url) { data, response, error in
                let fromServerPost = try! JSONDecoder().decode([PostDto].self, from: data!)
                resolver.fulfill(fromServerPost)
            }.resume();

        });
    }
        
    func post(postId:Int) -> Promise<PostDto>{
        return Promise<PostDto>.init(resolver: { resolver in

            guard let url = URL(string: "\(Env.apiUrlJsonPlaceholder)posts/\(postId)") else {
                return resolver.reject(HttpError());
            }

            URLSession.shared.dataTask(with: url) { data, response, error in
                let fromServerPost = try! JSONDecoder().decode(PostDto.self, from: data!)
                resolver.fulfill(fromServerPost)
            }.resume();

        });
    }
    
}


