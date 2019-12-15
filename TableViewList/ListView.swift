//
//  ListView.swift
//  TableViewList
//
//  Created by Nicolas Rios on 12/14/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
//

import SwiftUI

struct ListView: View {
    let names = ["Steve","Tim","Bob","tom"]
    
    var body: some View {
        List (names, id: \.self) { name in
            NavigationLink(destination:Text("Hi\(name)")) {
                Image(systemName:"person.circle.fill")
                Text(name)
                
         }
            
        }.navigationBarTitle("List")
            
    }
  }


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
