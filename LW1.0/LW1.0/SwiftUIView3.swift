//
//  SwiftUIView3.swift
//  LW1.0
//
//  Created by Алексей Непряхин on 02.03.2023.
//

import SwiftUI

struct SwiftUIView3: View {
    @State var orientation = UIDevice.current.orientation

    let orientationChanged = NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)
            .makeConnectable()
            .autoconnect()
    
    var body: some View {
        Group {
            if orientation.isLandscape {
                HStack {
                    VStack {
                        Button("First button") {}
                        Button("Second button") {}
                        Button("Third button") {}
                        Button("Fourth button") {}
                        Button("Fifth button") {}
                    }
                    VStack {
                        Button("Sixth button") {}
                        Button("Seventh button") {}
                        Button("Eigth button") {}
                    }
                }
                .font(.largeTitle)
                .fontWeight(.bold)
                .buttonStyle(.borderedProminent)
            } else {
                VStack {
                    Button("First button") {}
                    Button("Second button") {}
                    Button("Third button") {}
                    Button("Fourth button") {}
                    Button("Fifth button") {}
                    Button("Sixth button") {}
                    Button("Seventh button") {}
                    Button("Eigth button") {}
                    Spacer()
                }
                .font(.largeTitle)
                .fontWeight(.bold)
                .buttonStyle(.borderedProminent)
            }
        }.onReceive(orientationChanged) { _ in
            self.orientation = UIDevice.current.orientation
        }
    }
}

struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView3()
    }
}
