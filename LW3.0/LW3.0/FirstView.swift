//
//  ContentView.swift
//  LW3.0
//
//  Created by Алексей Непряхин on 13.04.2023.
//

import SwiftUI

struct FirstView: View {
    @State var date = Date.now
    
    var body: some View {
        NavigationView {
            VStack() {
                Button() {
                    getDate()
                } label: {
                    Label("Get date", systemImage: "calendar.badge.clock")
                }
                
                NavigationLink(destination: SecondView(date: date), label: {Label("Next screen", systemImage: "rectangle.portrait.and.arrow.right")})
            }
            .navigationTitle("Getting date")
            .tint(.pink)
            .buttonStyle(.bordered)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ShareLink(Text("Share"), item: URL(string: "https://www.mirea.ru")!)
                }
            }
        }
        .accentColor(.pink)
    }
    
    func getDate() {
        date = Date.now
    }
}

struct SecondView: View {
    var date: Date
    var body: some View {
        Label("Квадрат значения моего номера по списку равен 324, а текущее время - \(date)", systemImage: "clock")
            .foregroundColor(.pink)
            .padding()
            .navigationTitle("Date")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
