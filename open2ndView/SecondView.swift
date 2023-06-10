//
//  secondView.swift
//  open2ndView
//
//  Created by Marie Mensing on 10.06.23.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
        
    var body: some View {
//        .backgroundColor(Color.black)
//            Color.black
//            .edgesIgnoringSafeArea(.all)
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                GeometryReader { geometry in
                    VStack {
                        Spacer()
                        
                        Image("Barney")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .alignmentGuide(HorizontalAlignment.center) {
                                _ in geometry.size.width / 2
                                }
                            .alignmentGuide(VerticalAlignment.center) {
                                _ in geometry.size.height / 2
                                }
//                            .cornerRadius(20)
//                    .frame(width: 200, height: 200)
                        Spacer()
                        Text("wanna go back!")
                            .foregroundColor(Color.white)
                            .font(.headline)
                    }
                }
        }
        

    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}


// impro:
//      - whole screen is a button now lol
//      - center image in the middle of the screen
