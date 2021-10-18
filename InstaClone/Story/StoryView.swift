//
//  StoryView.swift
//  InstaClone
//
//  Created by Rodrigo Alves on 17/10/21.
//

import SwiftUI

struct StoryView: View {
    var people: [Person]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack { //LazyStack carrega itens por demanda, como a flatlist no React
                VStack(alignment: .leading, spacing: 10) {
                    Image(systemName: "person.crop.circle.badge.plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65)
                        .rotation3DEffect(
                            .degrees(180),
                            axis: (x: 0.0, y: 1.0, z: 0.0))
                        .foregroundColor(.gray)
                        
                        .opacity(0.5)
                        .colorInvert()
                        
                    Text("Seus Story")
                        .font(.system(size: 12))
                }
                .padding(.leading)
                .padding(.vertical, 5)
                
                ForEach(people, id: \.id) { person in
                    VStack(alignment: .leading, spacing: 10) {
                        Image(person.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55)
                            .padding(2)
                            .clipShape(Circle())
                            .overlay(Circle()
                                        .stroke(Color.black,
                                                lineWidth: 2))
                        
                        Text(person.name)
                            .font(.system(size: 12))
                    }
                    .padding(.leading, 2)
                    .padding(.vertical, 5)
                }
            }
        }
    }
}
