//
//  AnuncioTarjetaView.swift
//  Reto_pantallas
//
//  Created by MAC on 24/11/26.
//

import Foundation
import SwiftUI

struct AnuncioTarjetaView: View {
    let anuncio : Anuncio
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(anuncio.titulo)
                    .font(.headline)
                    .foregroundColor(.gray)
                Spacer()
                Text(anuncio.tiempo)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text(anuncio.descripcion)
                .font(.caption)
                .foregroundColor(.gray)
                .lineLimit(2)
            
            Image(anuncio.imagenName)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Divider()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    AnuncioTarjetaView (anuncio: Anuncio(titulo: "Renovacion", tiempo: "hace un dia", descripcion: "ya puedes renovar", imagenName: "banner"))
        .padding()
}

