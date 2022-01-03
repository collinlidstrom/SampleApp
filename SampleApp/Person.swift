//
//  Person.swift
//  SampleApp
//
//  Created by Collin Lidstrom on 1/2/22.
//

import Foundation

class Person : Decodable, Identifiable {
    
    var id:Int?
    var firstName:String?
    var lastName:String?
    var age:Int?
    
}
