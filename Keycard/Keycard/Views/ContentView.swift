//
//  ContentView.swift
//  Keycard
//
//  Created by Ivan Ivanov on 23.03.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BackView()
            //FrontView()
            
                //.edgesIgnoringSafeArea(.top)
                //.frame(height: 500)
                
            //Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
