//
//  SplashScreen.swift
//  clockOS WatchKit Extension
//
//  Created by bnkwsr2 on 04.02.2022.
//

import SwiftUI

struct SplashScreen: View {
    @Binding var screen : String
    var body: some View {
        VStack {
            Image("cooking1")
                .resizable()
                .frame(width: 136, height: 136)
            Text("WSR Food")
                .foregroundColor(.black)
                .font(.system(size: 30))
        }
        .frame(width: WKInterfaceDevice.current().screenBounds.width, height: WKInterfaceDevice.current().screenBounds.height)
        .background(
            Color("MyOrange")
        )
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    screen = "SignInScreen"
                }
            }
        }
    }
}

//struct SplashScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashScreen()
//    }
//}
