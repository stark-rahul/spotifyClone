//
//  contentItemViewer.swift
//  spotifyClone
//
//  Created by Rahul on 12/06/20.
//  Copyright © 2020 stark rahul. All rights reserved.
//

import SwiftUI

struct contentItemViewer: View {
    var topSpacer_height:CGFloat = 400
    var reusableColor = Color.init(red: 148/255, green: 208/255, blue: 231/255)
    @State var playButton_offset:CGFloat = 335
    var body: some View {
        ZStack{
            //layer 0
            LinearGradient(gradient: Gradient(colors:
                [reusableColor,
                Color.black,
                Color.black]
                ), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            
            //layer 1
            VStack{
                Spacer()
                    .frame(height:50)
                Image("alanWalker")
                    .resizable()
                    .frame(width:200, height: 200)
                
                Text("Title")
                    .foregroundColor(Color.white)
                    .font(.system(size:24, weight: .bold))
                Text("SubTitle")
                    .foregroundColor(Color.init(red: 0.5, green: 0.5, blue: 0.5))
                    .font(.system(size:17, weight: .medium))
                Spacer()
            }
            //layer 2
            ScrollView{
                GeometryReader{geo -> AnyView? in
                    let thisOffset = geo.frame(in: .global).minY
                    if thisOffset > -300 {
                        self.playButton_offset = thisOffset
                    } else{
                        self.playButton_offset = -300
                    }
                    
                    return nil
                }
                VStack(spacing:0){
                    HStack {
                        Spacer()
                            .frame(height:topSpacer_height)
                            .background(LinearGradient(gradient: Gradient(colors:
                                [Color.clear,
                                 Color.clear,
                                 Color.clear,
                                 Color.clear,
                                 Color.black
                            ]),startPoint: .top, endPoint: .bottom))
                    }
                    
                    VStack {
                        ForEach(0..<30){indicator in
                            HStack {
                                lImage_text_rImage()
                                Spacer()
                            }
                        }
                    }.background(Color.black)
                    
                }.background(Color.white.opacity(0.2))
            }
            //Background layer 
            VStack{
                LinearGradient(gradient: Gradient(colors: [reusableColor,Color.clear]), startPoint: .top, endPoint: .bottom).frame(height:130)
                Spacer()
            }
            //layer 3
            VStack {
                Spacer()
                    .frame(height:playButton_offset + 300)
                HStack{
                    if (playButton_offset > -250) {
                        Text("PLAY")
                        
                    } else {
                        Image(systemName: "play.fill")
                    }
                }
                .foregroundColor(.white)
                .frame(width:get_playButtonWidth(), height:50)
                .background(Color.init(red: 101/255, green: 211/255, blue: 110/255))
                .cornerRadius(25)
                .font(.system(size:17, weight:.bold))
                .shadow(radius: 20)
                
                Spacer()
            }
            //layer 4
            VStack{
                HStack{
                Image(systemName: "chevron.left")
                Spacer()
                Image(systemName: "ellipsis")
                
                
            }
            .foregroundColor(Color.white)
            .padding()
            Spacer()
                
                
                
            }
         
        }
        
    }
    
    func get_playButtonWidth() -> CGFloat {
        if playButton_offset > -150 {
            return 240
        } else if playButton_offset <= -300{
            return 50
        } else {
            let width:CGFloat = 240 - (190*(((-1 *
                playButton_offset) - 150) / 150))
            return width
            
        }
        
        
    }
    
}
struct contentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        contentItemViewer()
    }
}


