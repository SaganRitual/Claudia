// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

@main
struct ClaudiaApp: App {
    private static var screenDimensions_: CGSize?

    static var screenDimensions: CGSize {
        guard let mainScreen = NSScreen.main else {
            preconditionFailure("You're gonna have a bad day")
        }

        if screenDimensions_ == nil {
            print("ContentView first pass mainScreen \(mainScreen.frame.size), visibleFrame \(mainScreen.visibleFrame.size)")
            screenDimensions_ = CGSize(width: mainScreen.visibleFrame.size.height, height: mainScreen.visibleFrame.size.height)
            return screenDimensions_!
        }

        if mainScreen.visibleFrame.size != screenDimensions_! {
            print("ContentView change mainScreen \(mainScreen.frame.size), visibleFrame \(mainScreen.visibleFrame.size)")
            screenDimensions_ = CGSize(width: mainScreen.visibleFrame.size.height, height: mainScreen.visibleFrame.size.height)
        }

        return screenDimensions_!
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
