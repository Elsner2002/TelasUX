//
//  User.swift
//  AppFinancas
//
//  Created by Felipe  Elsner Silva on 26/04/23.
//

import Foundation

class User{
    
    var nome: String
    var email: String
    var senha: String
    var foto: String
    
    
    init(nome: String, email: String, senha: String, foto: String) {
        self.nome = nome
        self.email = email
        self.senha = senha
        self.foto = foto
    }
}

