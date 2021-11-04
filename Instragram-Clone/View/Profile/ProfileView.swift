//
//  ProfileView.swift
//  Instragram-Clone
//
//  Created by Chanoknun Choosaksilp on 12/10/21.
//

import SwiftUI

struct ProfileView: View {
    @State var user: User
    var body: some View {
        ScrollView{
            VStack(spacing:32){
                ProfileHeaderView(ViewModel: ProfileViewModel(user: user))
                    .padding()
                
                if let currentProfileID = user.id {
                    PostGridView(config: .profile(currentProfileID))
                }
                
            }
        }
    }
}

