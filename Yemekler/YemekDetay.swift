//
//  YemekDetay.swift
//  Yemekler
//
//  Created by Mustafa TAVASLI on 23.07.2024.
//

import SwiftUI

struct YemekDetay: View {
    
    var yemek = Yemekler()
    
    var body: some View {
        VStack(spacing: 100) {
            Image(yemek.yemekResim!)
            Text("\(yemek.yemekFiyat!) ₺")
                .font(.system(size: 50))
                .foregroundStyle(.blue)
            Button("Sipariş Ver") {
                print("\(yemek.yemekAd!) sipariş verildi.")
            }
            .foregroundStyle(.white)
            .frame(width: 250, height: 50)
            .background(.blue)
            .clipShape(.buttonBorder)
        }
        .navigationTitle("\(yemek.yemekAd!)")
    }
}

#Preview {
    YemekDetay()
}
