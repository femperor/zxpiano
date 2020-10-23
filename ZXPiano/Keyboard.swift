//
//  Keyboard.swift
//  ZXPiano
//
//  Created by zhouhuang on 2020/10/23.
//

import SwiftUI

struct WhiteKey: View {
    var body: some View {
        Rectangle().foregroundColor(.white).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 0.5)
    }
}

struct BlackKey: View {
    var body: some View {
        Rectangle().foregroundColor(.black)
    }
}

struct Keyboard: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0) {
            ForEach(1...36, id: \.self) { count in
                WhiteKey()
            }
        }
    }
}

struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard()
            .previewLayout(PreviewLayout.fixed(width:2048,height:1536))
            .previewDevice("iPad Air (4th generation)")
    }
}
