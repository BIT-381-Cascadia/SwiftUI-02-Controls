//
//  TabView.swift
//  SwiftUI-02-Controls
//  Jason + Sean + Adam + Anton = 253YUP
//
//
// Controls/Views: .tabItem, TabBarView, text
//
// Using the TabBarView view, one can place a tab bar at the bottom of the screen to quickly switch between
// information tiles. The .tabItem control allows the developer to assign different views for the user to access.
// The text view fields allow vital information to be displayed to the user as the need arises. The Spacer()
// control opens up the area between components for various needs and pleasures.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ZStack {
                Color.blue.ignoresSafeArea()
                VStack {
                    Text("Option 1")
                    Text("Hey its more text!")
                    Spacer()
                    Text("Even more!!!!")
                        .bold()
                }
                .foregroundColor(.orange)
            }
            .tabItem {
                Text("homebtn here")
                    .padding()
            }
            ZStack
            {
                Color.blue.ignoresSafeArea()
                VStack {
                    Text("Option 2.\n That's it. What do you want, a prize?")
                        .padding()
                    
                }
                .foregroundColor(.orange)
            }
            .tabItem {
                Text("highlights")
            }
        }
        .accentColor(.orange)
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
