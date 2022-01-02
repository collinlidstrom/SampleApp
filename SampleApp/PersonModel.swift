//
//  PersonModel.swift
//  SampleApp
//
//  Created by Collin Lidstrom on 1/2/22.
//

import Foundation
import SwiftUI

class PersonModel : ObservableObject {
    
    @Published var people = [Person]()
    
    init(){
        
        getRemoteData()
    }
    
    func getRemoteData() {
        
    }
    
}
