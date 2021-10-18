//
//  PostsView.swift
//  InstaClone
//
//  Created by Rodrigo Alves on 17/10/21.
//

import SwiftUI

struct PostsHeader: View {
    var person: Person
    
    var body: some View {
        HStack {
            Image(person.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35)
                .padding(2)
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.black,
                                    lineWidth: 2))
                .padding(.leading)
            
            VStack(alignment: .leading) {
                Text(person.name)
                    .font(.system(size: 14))
                    .bold()
                Text("Local/audio da foto")
                    .font(.system(size: 12))
            }
            
            Spacer()
            
            Image(systemName: "ellipsis")
                .padding()
        }
    }
}

let people: Person = Person(name: "mrglasses", image: "mrglasses")

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsHeader(person: people)
    }
}
