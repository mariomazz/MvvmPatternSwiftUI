//
//  PostsModel.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 17/10/23.
//

import Foundation

class PostsModel : ObservableObject {
    @Published var posts :[Post] = []
    
    func loadPosts() ->Void{
        
        guard let url = URL(string: "\(Env.apiUrlJsonPlaceholder)posts") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let fromServerPosts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                self.posts = fromServerPosts;
            }
        }.resume();
        
    }
    
    /* func loadPosts()async throws -> [Post]{
        let (data, _) = try await session.data(from: url)
        let decoder = JSONDecoder()
        return try decoder.decode([Item].self, from: data)
    } */
    
    /*func loadItems(from url: URL) async throws -> [Item] {
            let (data, _) = try await session.data(from: url)
            let decoder = JSONDecoder()
            return try decoder.decode([Item].self, from: data)
        }*/
    
}
