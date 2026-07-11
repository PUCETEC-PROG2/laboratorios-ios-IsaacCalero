//
//  RepoForm.swift
//  GithubClient
//
//  Created by Isaac Calero on 7/7/26.
//

import SwiftUI

struct RepoForm: View {
    @State private var repoName: String = ""
    @State private var repoDescription: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField(
                    "",
                    text: $repoName,
                    prompt: Text("Nombre del Repositorio")
                        .foregroundStyle(.black.opacity(0.4))
                )
                .textFieldStyle(.roundedBorder)
                .padding(.vertical)
                
                TextField(
                    "",
                    text: $repoDescription,
                    prompt: Text("Descripción del Repositorio")
                        .foregroundStyle(.black.opacity(0.4))
                )
                .textFieldStyle(.roundedBorder)
                .lineLimit(3...6)
                .padding(.vertical)
                
                Spacer()
                
                HStack {
                    Button(action: {
                        print("Botón presionado")
                    }) {
                        Label("Guardar", systemImage: "square.and.arrow.down")
                            .padding(.all, 4)
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button(action: {
                        print("Botón presionado")
                    }) {
                        Label("Cancelar", systemImage: "xmark.circle")
                            .padding(.all, 4)
                            .foregroundStyle(.red)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.gray.opacity(0.5))
                    .padding(.horizontal, 4)
                }
            }
            .navigationTitle("Formulario del Repositorio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm()
}
