//
//  ContentView.swift
//  prayerTime
//
//  Created by Shaimaa on 5/4/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
        ZStack{
//                    Color.white
//                    .edgesIgnoringSafeArea(.all)

                VStack{
                    HStack{
                    Image("kaaba")
                     .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20, alignment: .leading)
                        .offset(x: -150, y: -10)
                      Image(systemName:"wand.and.rays")
                           .offset(x: 150, y: -10)
                    }
                    HStack{
                    Text("12:28")
                        .foregroundColor(.black)
                        .font(.system(size: 100))
                        Text("31")
                        .foregroundColor(.black)
                        .font(.system(size: 30))
                        .padding(.top, 30)
                    }
                    Text("باقي على الأذان")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                    HStack{
                    Image(systemName:"chevron.left")
                        .offset(x: 10)
                        Spacer()
                    Text("٤ مايو - ١١ رمضان")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                        Spacer()
                      Image(systemName:"chevron.right")
                          .offset(x: -10)
                    }.background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(0.5))
                    VStack{
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("3:37 AM").modifier(textColorBlack())
                        .offset(x: 10)
                        Spacer()
                          Text("الفجر").modifier(textColorBlack())
                        .offset(x: -10)
                    })
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("5:04 AM").modifier(textColorBlack())
                        .offset(x: 10)
                        Spacer()
                          Text("الشروق").modifier(textColorBlack())
                        .offset(x: -10)
                    })
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("11:45 AM").modifier(textColorBlack())
                        .offset(x: 10)
                        Spacer()
                          Text("الظهر").modifier(textColorBlack())
                        .offset(x: -10)
                    })
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("3:21 PM").modifier(textColorBlack())
                        .offset(x: 10)
                        Spacer()
                          Text("العصر").modifier(textColorBlack())
                        .offset(x: -10)
                    })

                    HStack(alignment: .center, spacing: 10, content:{
                        Text("6:25 PM").modifier(textColorBlack())
                        .offset(x: 10)
                        Spacer()
                          Text("المغرب").modifier(textColorBlack())
                        .offset(x: -10)
                    })

                    HStack(alignment: .center, spacing: 10, content:{
                        Text("7:50 PM").modifier(textColorBlack())
                        .offset(x: 10)
                        Spacer()
                          Text("العشاء").modifier(textColorBlack())
                        .offset(x: -10)
                    })
                    }.background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(0.5))
            }.foregroundColor(.black)
        }.background(Color(.white).opacity(0.5))
        .edgesIgnoringSafeArea(.all)
    }
}

struct textColorBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.custom("Arial", size: 25))
        .multilineTextAlignment(.center)
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
