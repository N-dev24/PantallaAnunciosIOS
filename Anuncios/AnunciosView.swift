//
//  Anuncios.swift
//  Reto_pantallas
//
//  Created by MAC on 24/11/26.
//

import Foundation
import SwiftUI

struct AnunciosView: View {
    @State private var seleccion = 0
    
    
    //datos de ejemplo, borrar luego
    let anunciosBecarios = [
        Anuncio(titulo: "Renovacion de becas 2026", tiempo: "Hace una semana", descripcion: "Ya se encuentran disponibles las renovaciones", imagenName: "gato"),
        Anuncio(titulo: "Sesion informativa", tiempo: "Hace una hora", descripcion: "Sesion informativa", imagenName: "gato")
    ]
    
    let anunciosAspirantes = [
        Anuncio(titulo: "Convocatoria 2026", tiempo: "Hace una semana", descripcion: "Ya se encuentra abierta la convocatoria de este año ", imagenName: "gato"),
        Anuncio(titulo: "Resultado de convocatoria", tiempo: "Hace una hora", descripcion: "Resultados de la convocatoria 2026", imagenName: "gato")
    ]
    
    var body: some View {
        NavigationView{
            VStack(spacing: 0) {
                HStack {
                    Image("logo_fundacion")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text("Anuncios")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    
                    Image(systemName: "bell")
                        .font(.title2)
                        .bold()
                        .background(Color.blue.opacity(0.1))
                        .clipShape(Circle())
                }
                .padding()
                
                Picker("opciones", selection: $seleccion){
                    Text("Becarios").tag(0)
                    Text("Aspirantes").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                ScrollView {
                    VStack(spacing:20) {
                        if seleccion == 0 {
                            ForEach(anunciosBecarios){
                                anuncio in  AnuncioTarjetaView(anuncio: anuncio)}
                        }else {
                            ForEach (anunciosAspirantes) {
                                anuncio in AnuncioTarjetaView(anuncio: anuncio)
                            }
                        }
                    }
                    .padding()
                }
                .navigationBarHidden(true)
            }
        }
    }
}

#Preview {
    AnunciosView()
}
