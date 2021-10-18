//
//  Person.swift
//  InstaClone
//
//  Created by Rodrigo Alves on 17/10/21.
//

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
}
