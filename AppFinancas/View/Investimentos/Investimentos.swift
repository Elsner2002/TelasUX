//
//  Perfil.swift
//  AppFinancas
//
//  Created by Felipe  Elsner Silva on 25/04/23.
//

import SwiftUI

struct Investimentos: View {
    
    @Binding var user: User
    
    var body: some View {
        NavigationStack{
            
        }
    }
}

struct Investimentos_Previews: PreviewProvider {
    static var previews: some View {
        Perfil(user: User(
            nome: "Harley Davidson",
            email: "harleyManeiro@gmail.com",
            senha: "S3nh4F0rt3",
            foto: "perfilImage"
        ))
    }
}
