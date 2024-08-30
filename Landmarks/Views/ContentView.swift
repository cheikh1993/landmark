//
//  ContentView.swift
//  Landmarks
//
//  Created by Mackbook on 08/08/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
var body: some View {
       LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
      
}
