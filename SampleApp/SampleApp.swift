//
//  SampleAppApp.swift
//  SampleApp
//
//  Created by Collin Lidstrom on 1/2/22.
//

import SwiftUI

@main
struct SampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(PersonModel())
        }
    }
}
