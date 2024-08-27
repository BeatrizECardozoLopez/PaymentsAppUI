//
//  SuggestionTiles.swift
//  PaymentsAppUI
//
//  Created by Beatriz Cardozo on 27/8/24.
//

import SwiftUI

struct SuggestionTiles: View {
    
    //MARK: Variables
    var title: String
    var description: String
    var image: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 60, height: 50)
                .padding()
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 18))
                    .fontWeight(.bold)

                Text(description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
            Spacer()
            Image(systemName: "arrow.right")
                .font(.headline)
                .padding()
        }
        .padding(.vertical, 10)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 4)
        .padding(.horizontal)
    }
}

#Preview {
    SuggestionTiles(title: "Movistar", description: "Recarga tus datos fácil y en un solo lugar. Disfruta de la navegación más rápida.", image: "movistar")
}
