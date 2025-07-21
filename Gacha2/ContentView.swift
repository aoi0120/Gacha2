//
//  ContentView.swift
//  Gacha2
//
//  Created by AoiKobayashi on 2025/07/21.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Image("gacha")
                .resizable()
                .ignoresSafeArea()
            Button {
                showSheet = true
            } label: {
                Image("Presentbox")
                    .resizable()
                    .scaledToFit()
            }
        }
        .fullScreenCover(isPresented: $showSheet) {
            ResultView()
        }
    }
}

#Preview {
    ContentView()
}
