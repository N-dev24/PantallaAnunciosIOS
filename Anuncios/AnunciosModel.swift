//
//  AnuncioModel.swift
//  Reto_pantallas
//
//  Created by MAC on 24/11/26.
//

import Foundation

struct Anuncio : Identifiable {
    let id = UUID()
    let titulo: String
    let tiempo: String
    let descripcion: String
    let imagenName: String
}
