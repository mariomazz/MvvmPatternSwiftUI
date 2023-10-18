//
//  PostsView.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import SwiftUI

struct PostsView: View {
    @ObservedObject var viewModel = PostsViewModel()
    init(){
       
    }
    
    var body: some View {
        NavigationView {
            List(self.viewModel.posts) {
                post in NavigationLink(destination: PostDetailView(post:post)){
                    (PostCardView(post:post))
                }
            }.onAppear(){
                self.viewModel.loadPosts();
            }.refreshable {
                self.viewModel.loadPosts();
            }.navigationTitle("Posts Page")
        }
    }
    
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
