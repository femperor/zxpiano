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
            ContentView()
        }
    }
}

struct ZXPianoApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Group {
            Text("Hello, World!")
                .previewLayout(PreviewLayout.fixed(width:568,height:320))
                .previewDevice("iPad Air (4th generation)")
                .preferredColorScheme(.dark)
        }/*@END_MENU_TOKEN@*/
    }
}
