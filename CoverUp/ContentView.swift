//
//  ContentView.swift
//  CoverUp
//
//  Created by Lexi McQueen on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:
                                                [Color("topBackgroundGradient"), Color("bottomBackgroundGradient")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 50) {
                Image(uiImage: UIImage(named: "CoverUpText")!)

                Button {
                    print("Upload button tapped.")
                } label: {
                    Text("Upload Something!")
                        .bold()
                        .frame(width: 200, height: 80)
                        .foregroundColor(Color("Alabaster"))
                        .background(LinearGradient(gradient: Gradient(colors: [Color("YellowPaleGradient"), Color("YellowGradient")]), startPoint: .leading, endPoint: .trailing))
                        .clipShape(Capsule())
                    
                }
                
            }
            .padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
