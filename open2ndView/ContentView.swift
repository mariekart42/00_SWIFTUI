//
//  ContentView.swift
//  open2ndView
//
//  Created by Marie Mensing on 10.06.23.
//

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var navigateToSecondScreen: Bool = false
    
    
    var body: some View {
        
        // ZStack is laying layers on top of each other, VStack is ordering elements from top to bottom
        ZStack {
            
            Color.black
                // putting color over all areas (all edged are colored)
                .edgesIgnoringSafeArea(.all)
            
            Button {
                self.navigateToSecondScreen = true
            } label: {
                Text("Hit for suprise")
                    .foregroundColor(Color.white)
                    .font(.headline)
            }
            .sheet(isPresented: self.$navigateToSecondScreen, content: {
                SecondView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
