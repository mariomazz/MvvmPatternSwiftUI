//
//  CardView.swift
//  MyFirstApp
//
//  Created by Mario Mazzarelli on 06/03/22.
//

import SwiftUI

struct CardView: View {
    
    let post:Post
    
    init(post: Post){
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(post: Post(userId: 0, id: 43, title: "String", body: "String"))
    }
}
