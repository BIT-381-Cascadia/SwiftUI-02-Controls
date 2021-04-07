//
//  ContentView.swift
//  SwiftUI-02-Controls
//
//  Created by Mike Panitz on 4/6/21.
//
//Text: This is a type of view that displays read-only text to the user.
//TextField: This is a control that displays an editable field for text.
//Button: This is a control that performs an action such as navigating to a new page or executing a function when pressed.
//DatePicker:  Control that allows you to select an absolute date. You can limit the picker to only allow a range of dates, and you can also alter the style of the picker - to appear as a calendar for example.
//Spacer vs Divider: A divider is a visual element to divide content, a spacer is a flexible element that expands to fill space inside its containing stack layout.
//Navigation View: A view that collects the navigation links for an app with a navigation component.
//Tab View: UI component for developers to display tabs in the app.
//Scroll View: Creates a view that allows users to scroll content in the viewable area.
//Form: Container that groups controls to take data input from the user.
//


import SwiftUI

struct ContentView: View {
    @State var username: String = ""
        @State var password: String = ""
        @State var email: String = ""

        var accentColor: Color = Color.blue
        var grayBackground: Color = Color.gray.opacity(0.2)
        
    var body: some View {
        VStack{
                    Text("New Account: ")
                        .font(.largeTitle)
                        .foregroundColor(.accentColor)
                        .fontWeight(.semibold)
                        .padding(.bottom, 20)
                    TextField("Username", text: $username)
                        .padding()
                        .background(grayBackground)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    SecureField("Password", text: $password)
                        .padding()
                        .background(grayBackground)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    TextField("Email", text: $email)
                        .padding()
                        .background(grayBackground)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    Button(action: {

                    }){
                        Text("Sign Up!")
                         .font(.headline)
                         .foregroundColor(.white)
                         .padding()
                         .frame(width: 220, height: 60)
                         .background(accentColor)
                         .cornerRadius(15.0)
                    }
                }.padding()
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
