//
//  ContentView.swift
//  AppFinancas
//
//  Created by Felipe  Elsner Silva on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var user = User(
        nome: "Harley Davidson",
        email: "harleyManeiro@gmail.com",
        senha: "S3nh4F0rt3",
        foto: "perfilImage"
    )
    
    var body: some View {
        NavigationStack{
            TabView{
                Tabelas(user: $user)
                    .tabItem{
                        Label("Tabelas", systemImage: "tablecells")
                        }
                
                Historico(user: $user)
                    .tabItem{
                        Label("Histórico", systemImage: "newspaper.fill")
                        }
                
                Investimentos(user: $user)
                    .tabItem{
                        Label("Investimento", systemImage: "chart.bar.fill")
                        }
                
                Perfil(user: $user)
                    .tabItem{
                        Label("Perfil", systemImage: "person.circle.fill")
                        }
            }
            
            .navigationTitle("Nome do App")
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
