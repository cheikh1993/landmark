//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Mackbook on 09/08/2024.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button{
            isSet.toggle()
        }label: {
            Label("Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow :  .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
