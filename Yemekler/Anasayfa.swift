//
//  ContentView.swift
//  Yemekler
//
//  Created by Mustafa TAVASLI on 23.07.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var yemeklerListesi = [Yemekler]()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(yemeklerListesi) { yemek in
                    NavigationLink(destination: YemekDetay(yemek: yemek)) {
                        YemeklerSatir(yemek: yemek)
                    }
                }
            }
            .navigationTitle("Yemekler")
            .onAppear {
                var liste = [Yemekler]()
                let y1 = Yemekler(yemekID: 1, yemekResim: "thy_logo", yemekAd: "Ayran", yemekFiyat: 8)
                let y2 = Yemekler(yemekID: 2, yemekResim: "thy_logo", yemekAd: "Baklava", yemekFiyat: 70)
                let y3 = Yemekler(yemekID: 3, yemekResim: "thy_logo", yemekAd: "Fanta", yemekFiyat: 10)
                let y4 = Yemekler(yemekID: 4, yemekResim: "thy_logo", yemekAd: "Kadayıf", yemekFiyat: 50)
                let y5 = Yemekler(yemekID: 5, yemekResim: "thy_logo", yemekAd: "Köfte", yemekFiyat: 60)
                let y6 = Yemekler(yemekID: 6, yemekResim: "thy_logo", yemekAd: "Makarna", yemekFiyat: 55)
                liste.append(y1)
                liste.append(y2)
                liste.append(y3)
                liste.append(y4)
                liste.append(y5)
                liste.append(y6)
                yemeklerListesi = liste
            }
        }
    }
}

#Preview {
    Anasayfa()
}
