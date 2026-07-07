//
//  ReposItem.swift
//  GithubClient
//
//  Created by Isaac Calero on 7/7/26.
//

import SwiftUI

struct ReposItem: View {
    var body: some View {
        HStack{
            Image (uiImage: .githubLogo)
                .resizable()
                .frame(width: 80, height: 80)
            Spacer()
            VStack (alignment: .leading){
                Text("Nombre del Repositorio")
                    .font(.title2)
                Text ("Lorem Ipsum dolor descripcion ")
                HStack{
                    Text("Lenguaje")
                        .font(.caption)
                    Spacer()
                    Text("Swift")
                        .font(.caption)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ReposItem()
}

