//
//  RegistrationView.swift
//  Fozyl
//
//  Created by GAPT on 20/08/23.
//

import SwiftUI

struct RegistrationView: View {
    
    // Estados
    @State private var fullname = ""
    @State private var dni = ""
    @State private var company = ""
    @State private var email = ""
    @State private var password = ""
    
    // Descartar la presentacion actual
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
                TextField("Ingrese su nombre completo", text: $fullname)
                    .autocapitalization(.words) // cada inicio de palabra mayuscula
                    .modifier(FozylTextFieldModifier())
                
                TextField("Ingrese su número de identificación (CC)", text: $dni)
                    .modifier(FozylTextFieldModifier())
                
                TextField("Ingrese su correo electrónico", text: $email)
                    .autocapitalization(.none) // evitar las mayusculas
                    .modifier(FozylTextFieldModifier())
                
                TextField("Ingrese el nombre de la empresa contratante", text: $company)
                    .autocapitalization(.words) // cada inicio de palabra mayuscula
                    .modifier(FozylTextFieldModifier())
                
                
                // campo seguro para claves
                SecureField("Ingrese una contraseña", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            
            // Boton de registro
            Button {
                // accion
            } label: {
                Text("Inscribirse")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            // Vista de retornar Inicio de Sesion
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("¿Ya tienes una cuenta?")
                    
                    Text("Iniciar Sesión")
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

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
