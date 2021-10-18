//
//  ContentView.swift
//  InstaClone
//
//  Created by Rodrigo Alves on 03/10/21.
//

import SwiftUI

struct ContentView: View {
    let people: [Person] = [
        Person(name: "mrglasses", image: "mrglasses"),
        Person(name: "longhair", image: "longhair"),
        Person(name: "mrslouis", image: "mrslouis"),
        Person(name: "andrews", image: "andrews"),
    ]
    
    var body: some View {
        GeometryReader { geometry in
            let colWidth = geometry.size.width / 3
            
            TabView {
                NavigationView {
                    VStack {
                        // nav
                        HeaderView(colWidth: colWidth)
                            .padding(.bottom, 5)
                        
                        ScrollView {
                            VStack {
                                NewsView()
                                StoryView(people: people)
                                Divider()
                                    .frame(height: 0.5)
                                    .background(Color.gray)
                                    .padding(.bottom, 5)
                            }
                            
                            LazyVStack {
                                ForEach(people, id: \.id) { person in
                                    PostsHeader(person: person)
                                    
                                    Image(person.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                    
                                    PostsFooter(colWidth: colWidth, person: person)
                                        .padding(.bottom, 15)
                                }
                            }
                        }
                    }
                    // a barra de navegação tem seu próprio cabeçalho, por isso temos que desativa-lo (quando não vamos usar).
                    .navigationBarHidden(true)
                }
                .tabItem {
                    Image(systemName: "house.fill")
                }
                
                NavigationView {
                    VStack {

                    }
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                
                NavigationView {
                    VStack {

                    }
                }
                .tabItem {
                    Image(systemName: "play.rectangle")
                }
                
                NavigationView {
                    VStack {

                    }
                }
                .tabItem {
                    Image(systemName: "bag")
                }

                NavigationView {
                    VStack {

                    }
                }
                .tabItem {
                    Image(systemName: "person")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
