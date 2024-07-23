//
//  ContentView.swift
//  Yemekler
//
//  Created by Mustafa TAVASLI on 23.07.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    // ViewModel Object
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.yemeklerListesi) { yemek in
                    NavigationLink(destination: YemekDetay(yemek: yemek)) {
                        YemeklerSatir(yemek: yemek)
                    }
                }
            }
            .navigationTitle("Yemekler")
            .onAppear {
                viewModel.yemekleriYukle()
            }
        }
    }
}

#Preview {
    Anasayfa()
}
