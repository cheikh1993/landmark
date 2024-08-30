//
//  Landmark.swift
//  Landmarks
//
//  Created by Mackbook on 09/08/2024.
//

import SwiftUI

struct LandmarkRows: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                
            Text(landmark.name)
            
            Spacer()
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    LandmarkRows(landmark: ModelData().landmarks[0])
}

