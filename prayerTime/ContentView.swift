//
//  ContentView.swift
//  prayerTime
//
//  Created by Shaimaa on 5/4/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  

    @State var newColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    
    var body: some View {
        
        ZStack{
               Color(newColor)
                .opacity(0.5)
               .edgesIgnoringSafeArea(.all)

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
                        Text("3:37 AM")
                        .offset(x: 10)
                        Spacer()
                          Text("الفجر")
                        .offset(x: -10)
                    }).modifier(textColorBlack())
                        .onTapGesture {
                        self.newColor = UIColor(red: 242/255, green: 145/255, blue: 198, alpha: 1)
                        }
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("5:04 AM")
                        .offset(x: 10)
                        Spacer()
                          Text("الشروق")
                        .offset(x: -10)
                    }).modifier(textColorBlack())
                        .onTapGesture {
                    self.newColor = UIColor(red: 65/255, green: 110/255, blue: 225/255, alpha: 1)
                    }
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("11:45 AM")
                        .offset(x: 10)
                        Spacer()
                          Text("الظهر")
                        .offset(x: -10)
                    }).modifier(textColorBlack())
                        .onTapGesture {
                    self.newColor = UIColor(red: 86/255, green: 229/255, blue: 105/255, alpha: 1)
                    }
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("3:21 PM")
                        .offset(x: 10)
                        Spacer()
                          Text("العصر")
                        .offset(x: -10)
                    }).modifier(textColorBlack())
                        .onTapGesture {
                    self.newColor = UIColor(red: 230/255, green: 235/255, blue: 126/255, alpha: 1)
                    }
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("6:25 PM")
                        .offset(x: 10)
                        Spacer()
                          Text("المغرب")
                        .offset(x: -10)
                    }).modifier(textColorBlack())
                        .onTapGesture {
                    self.newColor = UIColor(red: 237/255, green: 75/255, blue: 42/255, alpha: 1)
                    }
                    HStack(alignment: .center, spacing: 10, content:{
                        Text("7:50 PM")
                        .offset(x: 10)
                        Spacer()
                          Text("العشاء")
                        .offset(x: -10)
                    }).modifier(textColorBlack())
                        .onTapGesture {
                    self.newColor = UIColor(red: 35/255, green: 229/255, blue: 226/255, alpha: 1)
                    }
                    }.background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(0.5))
            }
        }
    }
}

struct textColorBlack: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.custom("Arial", size: 25))
        .foregroundColor(.black)
        .multilineTextAlignment(.center)
        .padding(.all)
    }
}

struct textColorWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.custom("Arial", size: 25))
             .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
