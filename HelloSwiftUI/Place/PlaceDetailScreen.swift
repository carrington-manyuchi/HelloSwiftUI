//
//  PlaceDetailScreen.swift
//  HelloSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/10.
//

import SwiftUI

struct PlaceDetailScreen: View {
    @State var place: PlacesModel
    
    var body: some View {
        
        VStack {
            Image(place.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(place.name)
                .font(.title)
                .fontWeight(.semibold)
            
            Text("\(place.km.formatted()) kilometres")
                .foregroundStyle(.gray)
            
            Spacer()
        }
        .navigationTitle("Place Detail Screen")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PlaceDetailScreen(place: PlacesModel(name: "Carrington", photo: "tam", km: 101))
    }
}

