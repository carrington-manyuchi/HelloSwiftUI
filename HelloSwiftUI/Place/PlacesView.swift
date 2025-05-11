//
//  PlacesView.swift
//  HelloSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/10.
//

import SwiftUI

struct PlacesView: View {
    
    let places: [PlacesModel] = [
        PlacesModel(name: "Vumba Mountains", photo: "tam", km: 21),
        PlacesModel(name: "Nyanga Mountains", photo: "tom", km: 45),
        PlacesModel(name: "Vumba Mountains", photo: "tam", km: 21),
        PlacesModel(name: "Nyanga Mountains", photo: "tom", km: 45),
        PlacesModel(name: "Vumba Mountains", photo: "tam", km: 21),
        PlacesModel(name: "Nyanga Mountains", photo: "tom", km: 45)
    ]
    
    var body: some View {
            NavigationStack {
                    List(places) { place in
                        NavigationLink(value: place) {
                            PlacesCellView(place: place)
                        }
                }
                .navigationTitle("Places to visit...")
                .navigationDestination(for: PlacesModel.self) { place in
                    PlaceDetailScreen(place: place)
                }
        }
    }
}

#Preview {
    PlacesView()
}

