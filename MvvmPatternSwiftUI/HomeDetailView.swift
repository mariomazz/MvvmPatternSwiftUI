//
//  HomeDetailView.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import SwiftUI

struct HomeDetailView: View {
    
    let post:Post;
    
    init(post:Post){
        self.post = post
    }
    
    var body: some View {
        CardView(post:post)
    }
}

struct HomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailView(post :Post(userId: 4, id: 4, title: "grg", body: "grg"))
    }
}
