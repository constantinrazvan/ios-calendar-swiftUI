//
//  ContentView.swift
//  Calendar-App
//
//  Created by Constantin Razvan on 20.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Calendar()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Tasks()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tasks")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                
        }.accentColor(Color(.systemOrange))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
