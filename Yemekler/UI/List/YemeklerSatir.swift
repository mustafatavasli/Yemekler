//
//  YemeklerSatir.swift
//  Yemekler
//
//  Created by Mustafa TAVASLI on 23.07.2024.
//

import SwiftUI

struct YemeklerSatir: View {
    
    var yemek = Yemekler()
    
    var body: some View {
        HStack {
            Image(yemek.yemekResim!)
                .resizable()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading, spacing: 30) {
                Text(yemek.yemekAd!)
                Text("\(yemek.yemekFiyat!) ₺")
                    .foregroundStyle(.blue)
            }
        }
    }
}

#Preview {
    YemeklerSatir()
}
