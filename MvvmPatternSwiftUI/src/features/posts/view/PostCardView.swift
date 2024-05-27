//
//  CardView.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import SwiftUI

struct PostCardView: View {
    
    let post:PostDto
    
    init(post: PostDto){
        self.post = post
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(post.id)")
                .font(.headline)
                .foregroundColor(.secondary)
            Text(post.title)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .lineLimit(3)
            Text(post.body)
                .font(.caption)
                .foregroundColor(.secondary)
        }.padding()
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(post: PostDto(userId: 0, id: 43, title: "String", body: "String"))
    }
}
