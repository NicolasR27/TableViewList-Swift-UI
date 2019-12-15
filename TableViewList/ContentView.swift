//
//  ContentView.swift
//  TableViewList
//
//  Created by Nicolas Rios on 12/14/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationView { ListView()}
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                    
            }.tag(0)
            
            
            NavigationView{ Text("Hello")}
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Flame")
                    
            }.tag(1)
            
            NavigationView{ Text("Hi again!")}
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Heart")
                    
            }.tag(2)
            NavigationView{ Text("Coming soon?")}
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Chat")
                    
            }.tag(3)
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
