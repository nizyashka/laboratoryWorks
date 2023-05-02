//
// ContentView.swift
// LW3.1
//
// Created by Алексей Непряхин on 14.04.2023.
//

import SwiftUI

struct FirstView: View {
    
    @State var bookName: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                if bookName == "" {
                    Text("Тут появится название вашей любимой книги.")
                        .padding()
                        .fontWeight(.bold)
                } else {
                    Text("Название вашей любимой книги - \(bookName)")
                        .padding()
                        .fontWeight(.bold)
                }
                
                NavigationLink(destination: SecondView(bookName: $bookName), label: {Label("Открыть экран ввода данных", systemImage: "rectangle.portrait.and.arrow.right")})
            }
            .navigationTitle("Book name")
            .buttonStyle(.bordered)
            .tint(.orange)
        }
        .accentColor(.orange)
    }
}

struct SecondView: View {
    
    @Binding var bookName: String
    
    var body: some View {
        VStack {
            TextField("Введите название книги", text: $bookName)
            Text("Любимая книга разработчика - \(bookName)")
                .fontWeight(.bold)
        }
        .navigationTitle("Enter book name")
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
