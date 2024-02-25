//
//  ContentView.swift
//  Memorize
//
//  Created by Luiz Felipe Ribeiro on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻", "🎃", "👻", "🎃"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self)  { index in
                CardView(content: emojis[index], isFaceUp: true)

            }

        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {

    let content : String
    @State var isFaceUp: Bool
    
    var body: some View {
        ZStack  {
            let base = Circle()
            if isFaceUp {
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
                
            }else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}


