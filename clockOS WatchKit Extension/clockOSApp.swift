//
//  clockOSApp.swift
//  clockOS WatchKit Extension
//
//  Created by bnkwsr2 on 04.02.2022.
//

import SwiftUI

@main
struct clockOSApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            ContentView()
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
