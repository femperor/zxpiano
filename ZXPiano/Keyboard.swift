//
//  Keyboard.swift
//  ZXPiano
//
//  Created by zhouhuang on 2020/10/23.
//

import SwiftUI

struct WhiteKey: View {
    var body: some View {
        Rectangle().foregroundColor(.white).border(Color.black, width: 0.5)
    }
}

struct BlackKey: View {
    
    var shouldSkip = false
    
    var body: some View {
        if shouldSkip {
            Spacer()
        }
        else {
            GeometryReader(content: { geometry in
                Rectangle().foregroundColor(.black)
                    
            })
            
        }
    }
}

struct Keyboard: View {
    var body: some View {
        ZStack(content: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
                ForEach(1...36, id: \.self) { count in
                    Button(action: {
                        print("white key clicked")
                    }){
                        WhiteKey()
                    }
                    .cornerRadius(5.0)
                }
            }
            GeometryReader(content: { geometry in
                let whiteKeyWidth = geometry.size.width / 36.0
                let blackKeyWidth = whiteKeyWidth * 2.0 / 3.0
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: whiteKeyWidth / 3.0, content: {
                    ForEach(1...35, id: \.self) { count in
                        Button(action: {
                            print("black key clicked")
                        }){
                            BlackKey(shouldSkip: count % 8 == 3 || count % 8 == 7)
                                .frame(width: blackKeyWidth, height: geometry.size.height * 0.8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        .cornerRadius(5.0)
                        .clipped()
                        
                    }
                }).padding(blackKeyWidth)
            })
            GeometryReader(content: { geometry in
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height/4.0, alignment: .top)
            })
        })
    }
}

struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard()
            .previewLayout(PreviewLayout.fixed(width:2048,height:1536))
            .previewDevice("iPad Air (4th generation)")
    }
}
