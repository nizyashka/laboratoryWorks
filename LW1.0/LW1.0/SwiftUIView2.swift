//
//  SwiftUIView2.swift
//  LW1.0
//
//  Created by Алексей Непряхин on 02.03.2023.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        VStack {
            Image("Amogus")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 15)
                .padding(/*@START_MENU_TOKEN@*/.all, 50.0/*@END_MENU_TOKEN@*/)
            HStack {
                Spacer()
                VStack {
                    Text("Name:")
                        .padding(.bottom, 1.0)
                    Text("Organisation:")
                        .padding(.bottom, 5.0)
                    Image(systemName: "phone")
                }
                .fontWeight(.bold)
                Spacer()
                VStack {
                    Text("Amon Gus")
                        .padding(.bottom, 1.0)
                    Text("Space Ship")
                        .padding(.bottom, 5.0)
                    Text("+7 (991)114-20-02")
                }
                Spacer()
            }
            Spacer()
            Button("Save") {}
                .padding(.leading, 250.0)
                .buttonStyle(.bordered)
        }
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
