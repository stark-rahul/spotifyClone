//
//  lImage_text_rImage.swift
//  spotifyClone
//
//  Created by Rahul on 13/06/20.
//  Copyright © 2020 stark rahul. All rights reserved.
//

import SwiftUI

struct lImage_text_rImage: View {
    var body: some View {
        HStack {
            Image(systemName: "timelapse").padding (.trailing, 20)
            Text("Title")
            Spacer()
            Image(systemName: "ellipsis")
        }   .padding(15)
            .background(Color.black)
            .foregroundColor(Color.white)
    }

}


struct lImage_text_rImage_Previews: PreviewProvider {
    static var previews: some View {
        lImage_text_rImage()
    }
}
