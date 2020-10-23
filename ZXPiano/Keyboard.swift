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
    var body: some View {
        Rectangle().foregroundColor(.black)
    }
}

struct Keyboard: View {
    var body: some View {
        ZStack(content: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
                ForEach(1...36, id: \.self) { count in
                    WhiteKey()
                }
            }
            GeometryReader(content: { geometry in
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: geometry.size.width/72, content: {
                    ForEach(1...35, id: \.self) { count in
                        BlackKey()
                    }
                }).padding(geometry.size.width/54)
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
