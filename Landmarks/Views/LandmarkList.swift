//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Mackbook on 09/08/2024.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    var filterdLandmark: [Landmark]{
        modelData.landmarks.filter{ landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorite Only")
                }
                ForEach(filterdLandmark){ landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRows(landmark: landmark)
                    }
                }
            }
                .navigationTitle("Landmarks")
            }detail: {
                Text("Selectionnez...")
            }
        }
    }



#Preview {
    LandmarkList()
}
