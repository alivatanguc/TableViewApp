//
//  Meals.swift
//  TableViewApp
//
//  Created by Delil Güç on 12.04.2023.
//

import Foundation
class Meals{
    // define variables
    var mealId:Int?
    var mealName:String?
    var mealImage:String?
    var mealPrice:Double?
    
    init() {
        
    }
    init(mealId:Int,mealName:String,mealImage:String,mealPrice:Double) {
        
        // shadowing operations
        self.mealId  = mealId
        self.mealName = mealName
        self.mealImage = mealImage
        self.mealPrice  = mealPrice
    }
}
