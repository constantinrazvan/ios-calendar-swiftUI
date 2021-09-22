//
//  Tasks.swift
//  Calendar-App
//
//  Created by Constantin Razvan on 20.09.2021.
//

import SwiftUI

let NavAppearance = UINavigationBarAppearance()

struct Tasks: View {
    init() {
        NavAppearance.configureWithOpaqueBackground()
        NavAppearance.backgroundColor = .systemOrange
        NavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        NavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
               
        UINavigationBar.appearance().standardAppearance = NavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = NavAppearance
    }
        
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
            
                }
            }
            .navigationBarTitle("Tasks")
        }
    }
}


struct Tasks_Previews: PreviewProvider {
    static var previews: some View {
        Tasks()
    }
}
