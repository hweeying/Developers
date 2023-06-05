//
//  ContentView.swift
//  Developers
//
//  Created by Jasmine Lai Hweeying on 05/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ForEach(cardData) { card in
                CardView(card: card)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
