//
//  RoloDeCamera.swift
//  AppFinancas
//
//  Created by Felipe  Elsner Silva on 26/04/23.
//

import SwiftUI

struct RoloDeCamera: View {
    
    @Environment(\.dismiss) private var dismiss
    @Binding var usuario : User
    
    var fotos: [String] = [
        "perfilImage",
        "HarleyDavidson"
    ]
    
    var body: some View {
        VStack{
            ScrollView{
                ForEach(fotos, id: \.self ) { f in
                    Button(action: {
                        usuario.foto = f
                        dismiss()
                    },
                           label:{
                        Image(f)
                            .resizable()
                            .scaledToFit()
                    }
                    )
                    .padding()
                }
            }
        }
    }
}

struct RoloDeCamera_Previews: PreviewProvider {
    static var previews: some View {
        RoloDeCamera(usuario: User(
            nome: "Harley Davidson",
            email: "harleyManeiro@gmail.com",
            senha: "S3nh4F0rt3",
            foto: "perfilImage"
        ))
    }
}
