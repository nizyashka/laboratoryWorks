//
//  ContentView.swift
//  LW3.3
//
//  Created by Алексей Непряхин on 01.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isPressed = false
    @State var isPressed2 = false
    @State var orientation = UIDevice.current.orientation

    let orientationChanged = NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
            .makeConnectable()
            .autoconnect()
    
    var body: some View {
        Group {
            if orientation.isLandscape {
                HStack {
                    MyItem(color: .blue, text: "Hello there!")
                    MyItem(color: .red, text: "Hello there too!")
                }
                .font(.largeTitle)
                .fontWeight(.bold)
            } else {
                ZStack {
                    if isPressed == true {
                        MyItem(color: .blue, text: "Hello there!")
                    }
                    if isPressed2 == true {
                        MyItem(color: .red, text: "Hello there too!")
                    }
                    VStack {
                        HStack {
                            Button("Fragment 1") {
                                isPressed.toggle()
                                isPressed2 = false
                            }
                            Button("Fragment 2") {
                                isPressed2.toggle()
                                isPressed = false
                            }
                        }
                        .buttonStyle(.bordered)
                        .tint(.black)
                        .foregroundColor(.black)
                        Spacer()
                    }
                }
                .font(.largeTitle)
                .fontWeight(.bold)
            }
        }.onReceive(orientationChanged) { _ in
            self.orientation = UIDevice.current.orientation
        }
    }
}

struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyItem: View {
    
    let color: Color
    let text: String
    
    var body: some View {
        Rectangle()
            .fill(color)
            .ignoresSafeArea()
            .overlay(Text(text))
    }
}
