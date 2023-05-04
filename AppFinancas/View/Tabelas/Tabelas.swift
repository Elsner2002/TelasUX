//
//  Tabelas.swift
//  AppFinancas
//
//  Created by Felipe  Elsner Silva on 25/04/23.
//

import SwiftUI

struct Tabelas: View {
    
    @Binding var user: User
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Tabelas_Previews: PreviewProvider {
    static var previews: some View {
        Tabelas(user: User(
            nome: "Harley Davidson",
            email: "harleyManeiro@gmail.com",
            senha: "S3nh4F0rt3",
            foto: "perfilImage"
        ))
    }
}
