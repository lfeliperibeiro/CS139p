//
//  ContentView.swift
//  Memorize
//
//  Created by Luiz Felipe Ribeiro on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        HStack {
            CardView(content: "👻", isFaceUp: true)
            CardView(content: "🎃")
            CardView(content: "👻", isFaceUp: true)
            CardView(content: "🎃")

        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {

    let content : String
    @State var isFaceUp: Bool = false
    
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


