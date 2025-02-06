//
//  DataModel.swift
//  AppStore
//
//  Created by admin34 on 23/10/24.
//
import UIKit

struct App{
    var title:String
    var subTitle:String
    var price:Double
    var rating:Int
    var description:String
    var id = UUID()
    var color:UIColor = randomColor
    var image:String
}

var randomColor : UIColor {
    UIColor(red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0)
}


class DataModel{
    
    static var sections:[Section] = [.promoted, .standard, .standard, .categories]
    static var apps: [App] = [
        App(title: "Zomato", subTitle: "Food Delivery", price: 0.0, rating: 5, description: "Food Delivery",image: "54075673755"),
        App(title: "Blinkit", subTitle: "Last Minute Delivery", price: 0.0, rating: 5, description: "Last Minute Delivery",image: "54076469434"),
        App(title: "Audible", subTitle: "Audio Books", price: 0.0, rating: 5, description: "Audio Books",image: "54077469873"),
        App(title: "Paytm", subTitle: "Pay Via Mobile", price: 0.0, rating: 5, description: "Pay Via Mobile",image: "54077559636"),
        App(title: "Google Pay", subTitle: "Payment App", price: 0.0, rating: 5, description: "Payment App",image: "54077675945"),
        App(title: "Maps", subTitle: "Apple Maps", price: 0.0, rating: 5, description: "Apple Maps",image: "54077691009")
    ]
    static var standardApps: [App] = [
        App(title: "Zomato", subTitle: "Food Delivery", price: 0.0, rating: 5, description: "Food Delivery",image: "54075673755"),
        App(title: "Blinkit", subTitle: "Last Minute Delivery", price: 0.0, rating: 5, description: "Last Minute Delivery",image: "54076469434"),
        App(title: "Audible", subTitle: "Audio Books", price: 0.0, rating: 5, description: "Audio Books",image: "54077469873"),
        App(title: "Paytm", subTitle: "Pay Via Mobile", price: 0.0, rating: 5, description: "Pay Via Mobile",image: "54077559636"),
        App(title: "Google Pay", subTitle: "Payment App", price: 0.0, rating: 5, description: "Payment App",image: "54077675945"),
        App(title: "Maps", subTitle: "Apple Maps", price: 0.0, rating: 5, description: "Apple Maps",image: "54077691009")
    ]
    
    enum Section{
        case promoted,standard,categories
    }
}









