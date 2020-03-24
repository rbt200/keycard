//
//  BackView.swift
//  Keycard
//
//  Created by Ivan Ivanov on 23.03.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct BackView: View {
    var body: some View {
        VStack {
            BarCode()
            Spacer()
        }
    }
}

struct BarCode: View {
    var body: some View {
        Image("bar_code_1")
            .resizable()
            .aspectRatio(CGSize(width: 1.4, height: 0.7), contentMode: .fit)
            .scaleEffect(0.8)
    }
}

struct BackView_Previews: PreviewProvider {
    static var previews: some View {
        BackView()
    }
}
