//
//  PlacesCellView.swift
//  HelloSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/10.
//

import SwiftUI

struct PlacesCellView: View {
    @State var place: PlacesModel
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            Image(place.photo)
                .resizable()
                .frame(width: 120, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(radius: 5)
            
            VStack(alignment: .leading) {
                Text(place.name)
                    .font(.body)
                
                Text("\(place.km.formatted())km")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .fontWeight(.thin)
            }
        }
    }
}


#Preview {
    ZStack {
        Color.blue.opacity(0.2)
            .ignoresSafeArea()
        PlacesCellView(place: PlacesModel(name: "Test Place", photo: "tom", km: 1.2))
    }
}
