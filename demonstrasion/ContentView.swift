//
//  ContentView.swift
//  demonstrasion
//
//  Created by Rahul on 18/06/20.
//  Copyright © 2020 stark rahul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isVisible = false
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.all)
            
               CircleImage()
                    .offset(y : -100)
                    .padding(.bottom, -100)
            
            
            VStack(alignment:.leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
