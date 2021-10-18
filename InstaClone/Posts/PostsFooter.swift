//
//  PostsFooter.swift
//  InstaClone
//
//  Created by Rodrigo Alves on 17/10/21.
//

import SwiftUI

struct PostsFooter: View {
    var colWidth: CGFloat
    var person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            LazyVGrid(columns: [
                GridItem(.fixed(colWidth), alignment: .leading),
                GridItem(.fixed(colWidth)),
                GridItem(.fixed(colWidth), alignment: .trailing),
            ]) {
                HStack() {
                    Image(systemName: "heart")
                    Image(systemName: "paperplane")
                    Image(systemName: "message")
                }
                .padding(.leading)
                Spacer()
                Image(systemName: "bookmark")
                    .padding(.trailing)
            }
            Text("Curtido por mrglasses e outras pessoas")
                .font(.system(size: 12))
                .padding(.leading)
            
            HStack{
                Text(person.name)
                    .bold()
                    .padding(.leading)
                    .padding(.vertical, 1)
                    .font(.system(size: 14))
                Text("Legenda da foto")
                    .font(.system(size: 14))
                    .padding(.vertical, 1)
            }
        }
    }
}
//
//struct PostsFooter_Previews: PreviewProvider {
//    var person: Person = "nome"
//    static var previews: some View {
//        GeometryReader { geometry in
//            let colWidth = geometry.size.width / 3
//            
//            PostsFooter(colWidth: colWidth, person: person)
//        }
//    }
//}
