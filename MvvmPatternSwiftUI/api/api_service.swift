//
//  api_service.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import Foundation



class ApiService : ObservableObject{
    
    func loadPosts(completion:@escaping ([Post]) -> ()) {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("Invalid url...")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            print(posts)
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
        
    }
    
    
    
    func deletePost(postId:Int){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("Invalid url...")
            return
        }
        
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
    }
    
}
