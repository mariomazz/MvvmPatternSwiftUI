//
//  PostsView.swift
//  MvvmPatternSwiftUI
//
//  Created by Mario Mazzarelli on 18/10/23.
//

import SwiftUI

struct PostsScreen: View {
    @ObservedObject var controller = PostsScreenController()
    init(){
        
    }
    
    var body: some View {
        NavigationView {
            List(self.controller.posts) {
                post in NavigationLink(destination: PostDetailScreen(postId:post.id)){
                    (PostCardView(post:post))
                }
            }.onAppear(){
                // --
            }.refreshable {
                self.controller.reloadPosts()
            }.navigationTitle("Posts Page")
        }
    }
    
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsScreen()
    }
}
