//
//  Signs.swift
//  MyZodian


import Foundation

struct Signs {
    var signs:[String] = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"  ]
    func getSign(for index:Int) -> String {
        
        return signs[index-1]
    }
}
