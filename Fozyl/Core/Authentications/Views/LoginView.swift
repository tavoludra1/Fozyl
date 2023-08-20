//
//  LoginView.swift
//  Fozyl
//
//  Created by GAPT on 20/08/23.
//

import SwiftUI

struct LoginView: View {
    
    // Estados
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        
        // Poder ir y volver en las vistas
        NavigationStack {
            VStack {
                Spacer()
                
                // Imagen Fosil icon SF Symbol
                // 45 grados de giro
                Image(systemName: "fossil.shell.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 125, height: 125)
                    .rotationEffect(.degrees(45.0))
                
                // campos de texto
                VStack {
                    TextField("Ingrese su correo electrónico", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    
                    // campo seguro para claves
                    SecureField("Ingrese su contraseña", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                        
                }
                // TODO: Desactivar el padding con olvido clave              .padding(.bottom)
                
                // olvido clave (Funcion futura)
                NavigationLink {
                    Text("¿Has olvidado tu contraseña?")
                } label: {
                    Text("¿Has olvidado tu contraseña?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                
                // Boton de ingreso
                Button {
                    // accion
                } label: {
                    Text("Iniciar Sesión")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Divider()
                
                
                // Vista de creacion usuario sistema
                NavigationLink {
                    Text("Vista de Registro usuario")
                } label: {
                    HStack(spacing: 3) {
                        Text("¿No tienes una cuenta?")
                        
                        Text("Inscribirse")
                            .fontWeight(.bold)
                    }
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.black)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
