//
//  ContentView.swift
//  FirstApp
//
//  Created by Diego Ortega on 6/4/23.
//

import SwiftUI

extension Color {
    static func randomColor() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}

struct ContentView: View {
    @State private var backgroundColor: Color = .white

    
    var body: some View {
        VStack {
            
            Image(systemName: "swift")
                .resizable()
                .frame(width: 25.0, height: 25.0)
                .padding([.leading, .top, .bottom, .trailing], 10.0)
                .background(Color.gray)
                .padding(.all, 4.0)
                .background(Color.black)
                .padding(.top, 5)
                    
            Text("MLIK")
                .padding(.top, -8.0)
                .font(.system(size: 22, weight: .light))
                .fontWeight(.bold)
            
            ScrollView {
                Image("IMG_7411")
                    .resizable()
                    .frame(width: 170, height: 260)
                    .padding(.all, 10.0)
                    .background(Color.black)
                    .padding(.top, 30)

                Text("I'm currently an IT intern but I'm experimenting with new technologies. I'm looking into Software Engineering, specifically Web and App Development")
                    .padding(.all, 10)
                    .padding(.bottom, 20.0)
                    .frame(width: 200.0)
                
                Label("Diego Ortega Huerta", systemImage: "")
                Label("Contra Costa College", systemImage: "")
                Label("IT Intern", systemImage: "")

               
                Button(action: {
                    backgroundColor = Color.randomColor()
                })
            {
                Text("Click here to change background color!")
                .underline()
                .background(Color.clear)
                .foregroundColor(.black)
            }
                .padding(.top, 20)
            }

        }
        .frame(maxWidth: .infinity)
        .background(backgroundColor)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
