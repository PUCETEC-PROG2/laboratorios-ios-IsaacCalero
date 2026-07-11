//
//  Profile.swift
//  GithubClient
//
//  Created by Isaac Calero on 7/7/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack{
            VStack (alignment: .leading){
                Text("Isaac Calero")
                    .font(.title)
                Image(uiImage: .githubLogo)
                    .resizable()
                    .scaledToFit()
                Text("IsaacCalero")
                    .font(.headline)
                    .padding(.vertical)
                Text("Estudiante de desarrollo de software")
                    .font(.caption)
            }
            .padding()
            .navigationTitle("Perfil")
        }
    }
}	
#Preview {
    Profile()
}


