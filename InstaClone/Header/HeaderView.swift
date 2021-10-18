//
//  NavView.swift
//  InstaClone
//
//  Created by Rodrigo Alves on 04/10/21.
//

import SwiftUI

struct HeaderView: View {
    var colWidth: CGFloat
    
    var body: some View {
        // Lazy é algo (??) que vai renderizando conforme usamos, semelhante ao uma FlatList, otimiza o app. O V é de vertical.
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.flexible(minimum: 0, maximum: colWidth)),
            GridItem(.fixed(colWidth))

        ]) {
        
            Text("Instaclone")
                .font(.custom("OleoScript-Regular", size: 20))
            
            Spacer()
            
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "plus.app")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18)
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18)
                Image(systemName: "ellipses.bubble")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18)
            }
        }
    }
}

// Estrutura para pré visualização

struct NavView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            let colWidth = geometry.size.width / 3
            HeaderView(colWidth: colWidth)
        }
    }
}
