//
//  ResultView.swift
//  Gacha2
//
//  Created by AoiKobayashi on 2025/07/21.
//

import SwiftUI

struct ResultView: View {
    @Environment(\.dismiss) var dismiss
    @State var backGroundImageName: String = "bgRed"
    @State var characterImageName: String = "iphone"
    @State var star = "⭐️⭐️"
    
    var body: some View {
        ZStack {
            Image(backGroundImageName)
                .resizable()
                .ignoresSafeArea()
            Image(characterImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 350)
                .offset(y: -50)
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Text("閉じる")
                    }
                    .padding(40)
                    .foregroundColor(.white)
                    .font(.title)
                    Spacer()
                }
                Spacer()
                Text(star)
                    .font(.largeTitle)
                    .padding(.bottom, 50)
            }
        }
        .onAppear {
            let number = Int.random(in: 0...9)
            switch number {
            case 9:
                backGroundImageName = "bgBlue"
                characterImageName = "IoTMesh"
                star = "⭐️⭐️⭐️⭐️⭐️"
            case 8:
                backGroundImageName = "bgGreen"
                characterImageName = "camera"
                star = "⭐️⭐️⭐️⭐️"
            case 0...7:
                backGroundImageName = "bgRed"
                characterImageName = "iphone"
                star = "⭐️⭐️"
            default:
                backGroundImageName = ""
                characterImageName = ""
                star = ""
            }
        }
    }
}

#Preview {
    ResultView()
}
