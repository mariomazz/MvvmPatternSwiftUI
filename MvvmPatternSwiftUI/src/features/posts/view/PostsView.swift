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
        self.viewModel.loadPosts();
    }
    
    var body: some View {
        NavigationView {
            List(self.viewModel.posts) {
                post in NavigationLink(destination: PostDetailView(postId:post.id)){
                    (PostCardView(post:post))
                }
            }.onAppear(){
                // --
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
