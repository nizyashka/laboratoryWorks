//
//  SwiftUIView4.swift
//  LW1.0
//
//  Created by Алексей Непряхин on 02.03.2023.
//

import SwiftUI

struct SwiftUIView4: View {
    @State var text = "Empty"
    var body: some View {
        VStack {
            Text(String(text))
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            HStack {
                Spacer()
                Button("Who am I?") {
                    text = print1()
                }
                Spacer()
                Button("It's not me!") {
                    text = print2()
                }
                Spacer()
            }
            .buttonStyle(.borderedProminent)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
    func print1() -> String {
        return "Мой номер по списку №18."
    }
    func print2() -> String {
        return "Это сделал не я."
    }
}

struct SwiftUIView4_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView4()
    }
}
