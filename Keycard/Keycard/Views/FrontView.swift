//
//  FrontView.swift
//  Keycard
//
//  Created by Ivan Ivanov on 23.03.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct FrontView: View {
    var body: some View {
        VStack(alignment: .center) {
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(height: 500)
                    //.edgesIgnoringSafeArea(.top)
                
                Face()
                    .offset(y: -300)
                    .padding(.bottom, -450)
            }
            TextFace()
            .offset(y: -20)
            
            //Spacer()
        }
    }
}

struct Face: View {
    var body: some View {
    Image("woman_face_bw")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 0))
        //.cornerRadius(10)
        //.padding(10)
        .scaleEffect(0.6)
    }
}

struct TextFace: View {
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: -4.0) {
                Text("MARIA")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                    
                Text("MIRABELLA")
                    .font(.largeTitle)
                    .fontWeight(.light)
            }
            //.padding(.top)
            Text("LEAD UI DESIGNER")
                .font(.headline)
                .multilineTextAlignment(.center)
            Spacer()
            HStack {
                Text("YOUR")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("COMPANY")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
            
        }
    }
}

struct FrontView_Previews: PreviewProvider {
    static var previews: some View {
        FrontView()
    }
}
