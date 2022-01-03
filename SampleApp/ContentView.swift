//
//  ContentView.swift
//  SampleApp
//
//  Created by Collin Lidstrom on 1/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        
        
        Text(model.people[0].firstName!)
    }
}

