//
//  Profile.swift
//  Calendar-App
//
//  Created by Constantin Razvan on 20.09.2021.
//

import SwiftUI

let colorNavAppearance = UINavigationBarAppearance()

struct Profile: View {
    
    @State private var previewIndex = 0
    
    init() {
        colorNavAppearance.configureWithOpaqueBackground()
        colorNavAppearance.backgroundColor = .systemOrange
        colorNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        colorNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = colorNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = colorNavAppearance

    }
    
    var body: some View {
        NavigationView {
            List {
                Section{
                    HStack{
                       Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        VStack(alignment: .leading){
                            Button("Sign In") {
                                auth()
                            }.font(.callout).foregroundColor(Color(.systemOrange))
                        }
                    }
                }
                Section(header: Text("ACCOUNT")) {
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 25, height: 25)
                        Picker(selection: $previewIndex, label: Text("Edit Profile")){
                            EditProfileVC()
                        }
                    }
                    HStack {
                        Image(systemName: "lock.fill")
                            .frame(width: 25, height: 25)
                        Picker(selection: $previewIndex, label: Text("Privacy")){
                            PrivacyVC()
                        }
                    }
                    HStack {
                        Image(systemName: "cloud.fill")
                            .frame(width: 25, height: 25)
                        Picker(selection: $previewIndex, label: Text("Privacy Policy")){
                            PrivacyPolicyVC()
                        }
                    }
                        }
                Section(header: Text("HELP CENTER")) {
                    HStack {
                        Image(systemName: "envelope.fill")
                            .frame(width: 25, height: 25)
                        Picker(selection: $previewIndex, label: Text("Send Feedback")){
                            SendFeedbackVC()
                        }
                    }
                    HStack {
                        Image(systemName: "square.and.pencil")
                            .frame(width: 25, height: 25)
                        Picker(selection: $previewIndex, label: Text("Write a Review")){
                            WriteAReviewVC()
                        }
                    }
                    HStack {
                        Image(systemName: "doc.on.doc.fill")
                            .frame(width: 25, height: 25)
                        Picker(selection: $previewIndex, label: Text("Terms of Use")){
                           TermsOfUseVC()
                        }
                    }
                        }
                Section(header: Text("FOLLOW ME")) {
                    Picker(selection: $previewIndex, label: HStack{
                        Image("instagram")
                            .frame(width: 25, height: 25)
                        Text("Instagram")
                    }){
                        //link
                    }
                    Picker(selection: $previewIndex, label: HStack{
                        Image("linkedin")
                            .frame(width: 25, height: 25)
                        Text("LinkedIn")
                    }){
                        //link
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "arrow.uturn.down.circle.fill")
                            .foregroundColor(.red)
                        Picker(selection: $previewIndex, label: Text("Log Out").foregroundColor(.red)){}
                    }
                }
                        }.listStyle(GroupedListStyle())
                    .padding(.top, -130)
                .navigationBarTitle("Profile", displayMode: .inline)
            }
        }
    
    func auth() {
        print("auth pressed")
    }
    }

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
