//
//  PostsView.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import SwiftUI

struct PostsView: View {
    @StateObject var viewModel = PostsViewModel()

    init(){
        
    }
    
    var body: some View {
        NavigationView {
            List(viewModel.posts) {
                post in NavigationLink(destination: PostDetailView(post:post)){
                    (PostCardView(post:post))
                }
            }.onAppear(){
                viewModel.loadPosts();
            }.refreshable {
                viewModel.loadPosts();
            }.navigationTitle("Posts Page")
        }
    }
    
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
