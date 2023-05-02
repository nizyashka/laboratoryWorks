//
//  ContentView.swift
//  LW3.2
//
//  Created by Алексей Непряхин on 20.04.2023.
//

import SwiftUI

struct ContentView: View {
    var phoneNumber = "718-555-5555"
    
    var body: some View {
        NavigationView {
            VStack() {
                Link("Safari", destination: URL(string: "https://www.mirea.ru")!)
                
                Link("Maps", destination: URL(string: "maps://?address=%D1%83%D0%BB%D0%B8%D1%86%D0%B0%20%D0%A1%D1%82%D1%80%D0%BE%D0%BC%D1%8B%D0%BD%D0%BA%D0%B0,%2020,%20%D0%9C%D0%BE%D1%81%D0%BA%D0%B2%D0%B0,%20%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F,%20107076&ll=55.793807,37.700827&q=%D1%83%D0%BB%D0%B8%D1%86%D0%B0%20%D0%A1%D1%82%D1%80%D0%BE%D0%BC%D1%8B%D0%BD%D0%BA%D0%B0,%2020")!)
                    .padding(10)
                
                Button(action: {
                    let phone = "tel://"
                    let phoneNumberFormatted = phone + phoneNumber
                    guard let url = URL(string: phoneNumberFormatted) else { return }
                    UIApplication.shared.open(url)
                }) {
                    Text("Make a phone call")
                        .foregroundColor(.green)
                }
            }
            .navigationTitle("Links")
            .buttonStyle(.bordered)
            .tint(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
