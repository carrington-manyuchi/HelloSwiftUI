//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/10.
//

import SwiftUI

struct HikeView: View {
    
    let hikes = [
        Hike(name: "Mount Rainier", photo: "sal", miles: 14),
        Hike(name: "Yosemite Falls", photo: "tam", miles: 2.2),
        Hike(name: "Zion National Park", photo: "tom", miles: 10),
        Hike(name: "Johannesburg Zoo", photo: "tam", miles: 15)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetailScreen(hike: hike)
            }
        }
    }
}

#Preview {
    HikeView()
}

struct HikeCellView: View {
    @State var hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .frame(width: 100, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(hike.miles.formatted() + " miles")
                    .foregroundStyle(.secondary)
                    .font(.caption)
                    .fontWeight(.thin)
            }
        }
    }
}
