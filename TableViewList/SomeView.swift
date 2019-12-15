//
//  SomeView.swift
//  TableViewList
//
//  Created by Nicolas Rios on 12/14/19.
//  Copyright © 2019 Nicolas Rios. All rights reserved.
//
import SwiftUI

struct someView: View {
    let buttonRow = [
        ButtonForInfoRow( icon: "mesage.circle.fill", title:"message"),
        ButtonForInfoRow( icon: "phone.circle.fill", title:"mobile"),
        ButtonForInfoRow( icon: "video.circle.fill", title:"video"),
        ButtonForInfoRow( icon: "envelope.circle.fill", title:"mail"),
        ButtonForInfoRow( icon: "dollarsign .circle.fill", title:"pay"),
    ]
    
    var body: some View {
        VStack {
            Image(systemName:"person.circle.fill")
                .font(.system(size: 72))
                .foregroundColor(.gray)
            
            
            Text("Bob Smith")
                .font(.largeTitle)
            
            HStack {
                ForEach(buttonRow, id: \.self) {  button in
                    Button(action: {
                        print(button.title)
                        
                    }) {
                        VStack {
                            Image(systemName: button.icon)
                                .foregroundColor(.blue)
                                .font(.system(size: 34))
                                .padding(.horizontal)
                            
                            Text(button.title)
                                .foregroundColor(.blue)
                                .font(.caption)
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        someView()
    }
}


struct ButtonForInfoRow: Hashable {
    let icon: String
    let title: String
}
