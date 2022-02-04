//
//  ContentView.swift
//  clockOS WatchKit Extension
//
//  Created by bnkwsr2 on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State var screen = "SplashScreen"
    @StateObject var mainModule = MainModule()
    var body: some View {
        if (screen == "SplashScreen") {
            SplashScreen(screen: $screen)
        } else if (screen == "SignInScreen") {
            SignInScreen(screen: $screen)
                .environmentObject(mainModule)
        } else if (screen == "OrderScreen") {
            OrderScreen(screen: $screen)
                .environmentObject(mainModule)
        } else if (screen == "MapScreen") {
            MapScreen(screen: $screen)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
