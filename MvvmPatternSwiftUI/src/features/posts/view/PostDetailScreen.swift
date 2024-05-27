//
//  HomeDetailView.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import SwiftUI

struct PostDetailScreen: View {
    @ObservedObject var controller: PostDetailScreenController;
    let postId:Int;
    
    init(postId:Int){
        self.postId = postId;
        self.controller = PostDetailScreenController(postId: postId);
    }
    
    var body: some View {

        return VStack { 
            if controller.post != nil {
                PostCardView(post:controller.post!).onAppear(){
                        // ---
                    }.refreshable {
                        self.controller.reloadPost();
                    }.navigationTitle("Post Page \(postId)");
            } else {
                ProgressView().progressViewStyle(CircularProgressViewStyle())
            }
        }
        
    }
       
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailScreen(postId: 0)
    }
}
