//
//  Yemekler.swift
//  Yemekler
//
//  Created by Mustafa TAVASLI on 23.07.2024.
//

import Foundation

class Yemekler : Identifiable {
    var yemekID : Int?
    var yemekResim : String?
    var yemekAd : String?
    var yemekFiyat : Int?
    
    init(yemekID: Int, yemekResim: String, yemekAd: String, yemekFiyat: Int) {
        self.yemekID = yemekID
        self.yemekResim = yemekResim
        self.yemekAd = yemekAd
        self.yemekFiyat = yemekFiyat
    }
    
    init() {}
}
