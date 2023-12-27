//
//  ContentView.swift
//  CaptureEffect
//
//  Created by Zaid's Mac on 27/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputField: String = ""
    var body: some View {
        HStack {
            TextField("Enter the name", text: $inputField) {
                print("Hey there!")
            }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(0.5) ,radius: 5)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "camera")
                    .padding(3)
                    .font(.title)
            })
            
            Button(action: {
                
            }, label: {
                Image(systemName: "mic")
                    .font(.title)
                    .padding(3)
            })
            
        }
        .padding()
        Spacer()
       
    }
}

#Preview {
    ContentView()
}
