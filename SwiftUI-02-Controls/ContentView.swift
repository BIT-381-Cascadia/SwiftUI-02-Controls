//
//  ContentView.swift
//  SwiftUI-02-Controls


//  EXERCISE #2:
//   We are using 3 controls: a Button, Text, and a TabBar view.

//  The Text view is a text that serves as instruction for the user.

//  TextField allows the user to edit text in the app. It's used for short text (name, email, and address).

//  Button allows the user to interact with the app. When the user tab on a button, the app should be able to display something or show something. Our doesn't do anything yet, but that the idea of a button.

//  DatePicker allows the user to pick a specific day, month, and year from a calendar. This is useful for setting up reminders.

//  Spacer vs. Divider: Spacer pushes all views to the top of the page when placed beneath them. Divider is used to separate contents

//  NavigationView acts like a toolbar and displays a top navigation inside the app. It can also contain buttons, current screen title, and a back button to go back to the previious screen.

//  The Tab View serves as navigation to the user. user can tab on a button to a different screen/tab. It can be used as a bottom navigation between tabs/screens.

//  A ScrollView is used when content is enclosed in a specific space and not all of it can be shown at once. Through visual indicators (like a scrollbar), the ScrollView shows the user that there is more content, and the user can then make scrolling motions to see the rest.

//  A Form is a container for grouping controls together that a user can manipulate. For instance, a Form could be used to group settings together for the user to customize.

//
//  Created by Mike Panitz on 4/6/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab1View()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                    
            }

            Tab2View()
                .tabItem {
                        Image(systemName: "square.and.pencil")
                        Text("Edit")
                }
            Tab3View()
                .tabItem {
                        Image(systemName: "clock")
                        Text("Alarms and Clock")
                }
        }
    }
}

struct Tab1View: View {
    var body: some View {
        Text("This is the first tab")
            .bold()
            .font(.system(size: 20.0))
            .foregroundColor(Color(red: 224/225, green: 125/225, blue: 88/225))
        
    }
}


struct Tab2View: View {
    var body: some View {
        Text("This is the second tab")
            .italic()
            .font(.system(size: 20.0))
    }
}

struct Tab3View: View {
    var body: some View{
        Button(action: {
                        
        }, label: {
            Image(systemName: "clock")
            Text("Alarms and Clock")
        })
        .foregroundColor(Color.white)
        .padding()
        .background(Color.blue)
        .cornerRadius(5)
        .overlay(RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.black, lineWidth: 3.5))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
