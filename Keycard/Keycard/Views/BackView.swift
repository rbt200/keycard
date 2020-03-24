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
            PersonalData()
            Spacer()
        }
    }
}

struct PersonalData: View {
    var nid = 1234567890
    var phone_1 = "+123 1234 567 890"
    var phone_2 = "+012 345 678"
    var mail = "maria.mirabella@gmail.com"
    var blood = "0+(0 Positive)"
    var address_1 = "Road #8, House #10"
    var address_2 = "5th Ave, New York"
    var address_3 = "NY, USA"
    var http = "www.mariamirabella.com"
    
    var body: some View {
        VStack {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                HStack {
                    Text("NID:")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Text(String(nid))
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                }
                .padding(.bottom, 7.0)
                HStack {
                    Text("PHONE:")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text(phone_1)
                        .font(.headline)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 7.0)
                Text(phone_2)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.leading, 76.0)
                    .padding(.bottom, 5.0)
                HStack {
                    Text("MAIL:")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Text(mail)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                }
                .padding(.bottom, 7.0)
                HStack {
                    Text("BLOOD GROUP:")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Text(blood)
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    
                }
                .padding(.bottom, 7.0)
            }
            
            VStack(alignment: .center) {
                Text("* IF THIS CARD IS FOUND, PLEASE INFORM *")
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .foregroundColor(Color.red)
                    .padding(.top, 45)
                    .padding(.bottom, 35)
            }
            
            VStack(alignment: .leading) {
                Text(address_1)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Text(address_2)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Text(address_3)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
            }
        }
            Spacer()
        
            VStack(alignment: .center) {
                Text(http)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
            }
        }
        .padding(22.0)
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
