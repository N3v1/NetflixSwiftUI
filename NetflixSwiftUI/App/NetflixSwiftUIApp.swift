//
//  NetflixSwiftUIApp.swift
//  NetflixSwiftUI
//
//  Created by Nevio Hirani on 01.10.23.
//

import SwiftUI
import FirebaseCore

@main
struct NetflixSwiftUIApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LogInView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        FirebaseApp.configure()
    }
}
