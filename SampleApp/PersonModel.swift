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
        
        self.people = getLocalData()
    }
    
    func getLocalData() -> [Person]{
        let pathString = Bundle.main.path(forResource: "sample", ofType: "json")
        
        if let path = pathString{
            
            let url = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    let characterData = try decoder.decode([Person].self, from: data)
                    print(characterData)
                    return characterData
                }
                catch{
                    print(error)
                }
                
            }
            catch{
                print(error)
            }
            
        }
        return [Person]()
    }
    
}


