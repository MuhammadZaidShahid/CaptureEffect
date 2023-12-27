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
        VStack {
            TextField("Enter the name", text: $inputField) {
                print("Hey there!")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
