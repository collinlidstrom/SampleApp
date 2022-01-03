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
        
        
        VStack(spacing: 45.0){
            ForEach(0..<model.people.count){ index in
                
                
                
                Button {
                    print("Hey Oliver")
                } label: {
                    ZStack {
                        Rectangle().frame(width: 100, height: 100, alignment: .center).foregroundColor(.black)
                        VStack{
                            Text(model.people[index].firstName ?? "Name unknown")
                            Text(model.people[index].lastName!)
                            if model.people[index].age == nil {
                                Text("Age Unknown")
                            }else{
                                Text("Age: \(model.people[index].age!)")
                            }
                            
                        }
                        .foregroundColor(.white)
                        
                        
                        
                    }
                }
            }
        }
    }
}

