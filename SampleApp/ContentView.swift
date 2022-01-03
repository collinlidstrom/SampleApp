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
        
        
        ForEach(0..<model.people.count){ index in
            
            
            
            Button {
                print("Hey Oliver")
            } label: {
                ZStack {
                    Rectangle().frame(width: 100, height: 100, alignment: .center).foregroundColor(.black)
                    Text(model.people[index].firstName!).foregroundColor(.white)
                    

                }
            }
        }
    }
}

