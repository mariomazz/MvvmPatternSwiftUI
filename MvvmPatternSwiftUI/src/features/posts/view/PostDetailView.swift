//
//  HomeDetailView.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import SwiftUI

struct PostDetailView: View {
    @ObservedObject var viewModel: PostViewModel;
    let postId:Int;
    
    init(postId:Int){
        self.postId = postId;
        self.viewModel = PostViewModel(postId: postId);
        self.viewModel.loadPost()
    }
    
    var body: some View {

        return VStack { 
            if viewModel.post != nil {
                PostCardView(post:viewModel.post!).onAppear(){
                        // ---
                    }.refreshable {
                        self.viewModel.loadPost();
                    }.navigationTitle("Post Page \(postId)");
            } else {
                ProgressView().progressViewStyle(CircularProgressViewStyle())
            }
        }
        
    }
       
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(postId: 0)
    }
}
