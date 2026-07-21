//
//  RepoForm.swift
//  GithubClient
//

import SwiftUI

struct RepoForm: View {
    
    @Binding var selectedTab: Int
    @StateObject private var viewController = RepoFormViewController()
    
    var body: some View {
        NavigationStack {
            if viewController.isLoading {
                VStack(spacing: 16) {
                    ProgressView()
                        .controlSize(.large)
                    Text("Creando Repositorio ...")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            } else {
                
                VStack {
                    if let errorMsg = viewController.errorMsg {
                        Text(errorMsg)
                            .foregroundStyle(.red)
                            .padding()
                    }
                    
                    Spacer()
                    
                    TextField(
                        "",
                        text: $viewController.repoName,
                        prompt: Text("Nombre del repositorio")
                            .foregroundStyle(.black.opacity(0.4))
                    )
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                    
                    TextField(
                        "Descripción del repositorio",
                        text: $viewController.repoDescription,
                        axis: .vertical
                    )
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(3...6)
                    .padding(.vertical)
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            selectedTab = 0
                        }) {
                            Label("Cancelar", systemImage: "xmark.circle")
                                .padding(.all, 4)
                                .foregroundStyle(.red)
                        }
                        .buttonStyle(.bordered)
                        .padding(.horizontal, 4)
                        
                        Button(action: {
                            Task {
                                await viewController.createRepository()
                                if viewController.errorMsg == nil {
                                    selectedTab = 0
                                }
                            }
                        }) {
                            Label("Guardar", systemImage: "square.and.arrow.down")
                                .padding(.all, 4)
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(.horizontal, 4)
                        .disabled(viewController.repoName.isEmpty)
                    }
                }
                .padding()
                .navigationTitle("Formulario de repositorio")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    RepoForm(selectedTab: .constant(0))
}
