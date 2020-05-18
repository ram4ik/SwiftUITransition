//
//  ContentView.swift
//  SwiftUITransition
//
//  Created by ramil on 18.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var active: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.active.toggle()
                }
            }) {
                Text("Slide this")
            }
            
            if active {
                Text("Slide In")
                    .transition(.move(edge: .bottom))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
