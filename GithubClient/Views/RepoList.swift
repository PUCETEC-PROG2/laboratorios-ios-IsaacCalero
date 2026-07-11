//
//  RepoList.swift
//  GithubClient
//
//  Created by Isaac Calero on 7/7/26.
//

import SwiftUI

struct RepoList: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ReposItem()
                    ReposItem()
                    ReposItem()
                    ReposItem()
                    ReposItem()
                    ReposItem()
                    ReposItem()
                    ReposItem()
                    ReposItem()
                }
            }
            .navigationTitle("Repositorios")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoList()
}


