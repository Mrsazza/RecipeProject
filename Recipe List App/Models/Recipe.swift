//
//  Recipe.swift
//  Recipe List App
//
//  Created by Todd Myers on 2021-08-13.
//

import Foundation

class Recipe: Identifiable, Codable {
    /// Even Though this following line creates warning. We don't need to worry about this one.
    /// We should not use nested for loop in any circumstances(Which was used in Data Service class to generate id).  As it creates memory and performance issues. Can see Data structure and algorithm for more detail.
    let id = UUID().uuidString
    var name:String
    var featured:Bool
   // var image2:String
   // var image2Text:String
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingredient]
    var directions:[String]
   
}

class Ingredient: Identifiable, Codable {
    let id = UUID().uuidString
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
   
}

class Picture: Identifiable, Codable {
        let id = UUID().uuidString
        var name:String
        var num:Int?
        var directions:[String]
}
