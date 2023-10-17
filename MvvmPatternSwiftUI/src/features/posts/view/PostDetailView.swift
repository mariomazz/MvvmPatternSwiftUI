//
//  HomeDetailView.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import SwiftUI

struct PostDetailView: View {
    
    let post:Post;
    
    init(post:Post){
        self.post = post
    }
    
    var body: some View {
        PostCardView(post:post)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post :Post(userId: 4, id: 4, title: "grg", body: "grg"))
    }
}
