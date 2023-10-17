//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var posts : [Post] = [Post]()
    
    init(){
        
    }
    
    var body: some View {
        NavigationView {
            List(posts) {
                post in NavigationLink(destination: HomeDetailView(post:post)){
                    (CardView(post:post))
                }
            }.onAppear(){
                ApiService().loadPosts{(posts) in
                    self.posts = posts
                }
            }.refreshable {
                ApiService().loadPosts{(posts) in
                    self.posts = posts
                }
            }.navigationTitle("Home Page")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
