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
            
            VStack{
                Text("Perfil del usuario")
            }
            .navigationTitle("Perfil del Usuario")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    Profile()
}
