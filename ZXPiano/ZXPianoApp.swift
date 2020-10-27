//
//  ZXPianoApp.swift
//  ZXPiano
//
//  Created by zhouhuang on 2020/10/22.
//

import SwiftUI

@main
struct ZXPianoApp: App {
    var body: some Scene {
        WindowGroup {
            Keyboard()
        }
    }
}

struct ZXPianoApp_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard().previewLayout(PreviewLayout.fixed(width:2048,height:1536))
            .previewDevice("iPad Air (4th generation)")
    }
}
