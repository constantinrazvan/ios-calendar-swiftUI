//
//  Home.swift
//  Calendar-App
//
//  Created by Constantin Razvan on 20.09.2021.
//

import SwiftUI

let Appearance = UINavigationBarAppearance()

struct Home: View {
        
    init() {
        Appearance.configureWithOpaqueBackground()
        Appearance.backgroundColor = .systemOrange
        Appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        Appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
               
        UINavigationBar.appearance().standardAppearance = Appearance
        UINavigationBar.appearance().scrollEdgeAppearance = Appearance
    }

    
    var body: some View {
        NavigationView {
            ZStack{
                
            }
            .navigationBarTitle("Home")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
