//
//  Perfil.swift
//  AppFinancas
//
//  Created by Felipe  Elsner Silva on 25/04/23.
//

import SwiftUI

struct Perfil: View {
    
    @Binding var user: User
    var a: String = "Teste"
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ZStack{
                        Image(user.foto)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                        VStack{
                            Spacer()
                            HStack{
                                NavigationLink(
                                    destination: {
                                        RoloDeCamera(usuario: $user)
                                    }, label: {
                                        Image(systemName: "camera.fill")
                                    }
                                )
                                .buttonStyle(.bordered)
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                            }
                        }
                    }
                    
                    Text("Olá \(a)!")
                        .font(.title)
                        .bold()
                    
                    NavigationLink(
                        destination: {
                            Teste()
                        }, label: {
                            Spacer()
                            Image(systemName: "person.circle.fill")
                            Text("Conta")
                            Spacer()
                        }
                    )
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                    .padding()
                    
                    NavigationLink(
                        destination: {
                            Teste()
                        }, label: {
                            Spacer()
                            Image(systemName: "bell.fill")
                            Text("Notificações")
                            Spacer()
                        }
                    )
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                    .padding()
                    
                    NavigationLink(
                        destination: {
                            Teste()
                        }, label: {
                            Spacer()
                            Image(systemName: "gear")
                            Text("Configurações")
                            Spacer()
                        }
                    )
                    .buttonStyle(.bordered)
                    .foregroundColor(.black)
                    .padding()
                    
                    NavigationLink(
                        destination: {
                            Teste()
                        }, label: {
                            Spacer()
                            Image(systemName: "door.right.hand.open")
                            Text("Sair")
                            Spacer()
                        }
                    )
                    .buttonStyle(.bordered)
                    .foregroundColor(.red)
                    .padding()
                    
                }
            }
        }
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil(user: User(
            nome: "Harley Davidson",
            email: "harleyManeiro@gmail.com",
            senha: "S3nh4F0rt3",
            foto: "perfilImage"
        ))
    }
}
