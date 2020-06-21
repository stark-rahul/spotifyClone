//
//  landmarkDemonstration.swift
//  demonstrasion
//
//  Created by Rahul on 21/06/20.
//  Copyright © 2020 stark rahul. All rights reserved.
//

import SwiftUI

struct landmarkDemonstration: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text(/*@START_MENU_TOKEN@*/"TurtileRock"/*@END_MENU_TOKEN@*/)
                .font(.title)
            HStack {
                Text("Joshavo Nationl Park")
                Spacer()
                Text("California")
                
            }
            
        }.padding()
            
        
    }
}

struct landmarkDemonstration_Previews: PreviewProvider {
    static var previews: some View {
        landmarkDemonstration()
    }
}
