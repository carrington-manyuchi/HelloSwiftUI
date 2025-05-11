//
//  HikeDetailScreen.swift
//  HelloSwiftUI
//
//  Created by Manyuchi, Carrington C on 2025/05/10.
//

import SwiftUI

struct HikeDetailScreen: View {
    
    @State var hike: Hike
    @State var isZoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: isZoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        isZoomed.toggle()
                    }
                }
            
            
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailScreen(hike: Hike(name: "Mount Rainier", photo: "sal", miles: 14))
    }
}
