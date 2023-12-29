//
//  ContentView.swift
//  CaptureEffect
//
//  Created by Zaid's Mac on 27/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputField: String = ""
    @State private var capturedImage: UIImage? = nil
    @State private var isCustomCameraViewPresented = false
    
    var body: some View {
        if capturedImage != nil {
            Image(uiImage: capturedImage!)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        } else {
            Color(UIColor.systemBackground)
        }
        HStack {
            TextField("Enter the Text", text: $inputField) {
                print("Hey there!")
            }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(0.5) ,radius: 5)
            
            Button(action: {
                isCustomCameraViewPresented.toggle()
            }, label: {
                Image(systemName: "camera")
                    .padding(3)
                    .font(.title)
            })
            .sheet(isPresented: $isCustomCameraViewPresented, content: {
                CustomCameraView(capturedImage: $capturedImage)
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
