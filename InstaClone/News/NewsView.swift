//
//  NewsView.swift
//  InstaClone
//
//  Created by Rodrigo Alves on 04/10/21.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack {
            Image(systemName: "cube.box")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
            
            Text("Este é um texto totalmente genérico para que visualizemos um exemplo de como ficaria o InstaClone.")
                .font(.system(size: 12))
            
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 6, height: 6)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
