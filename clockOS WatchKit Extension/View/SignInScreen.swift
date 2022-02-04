//
//  SignInScreen.swift
//  clockOS WatchKit Extension
//
//  Created by bnkwsr2 on 04.02.2022.
//

import SwiftUI

struct SignInScreen: View {
    @Binding var screen : String
    @EnvironmentObject var mainModule : MainModule
    var body: some View {
        VStack {
            VStack(spacing: 15) {
                VStack {
                    HStack{
                        Text("Email")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                            .opacity(0.4)
                        Spacer()
                    }
                   
                    TextField("",text:$mainModule.email)
                       
                        .foregroundColor(.black)
                        .font(.system(size:10))
                        .background(
                            Rectangle()
                                .frame(width: WKInterfaceDevice.current().screenBounds.width - 30, height: 1)
                                .foregroundColor(.black)
                            ,alignment: .bottom
                        )
                }
                .padding(.horizontal,15)
                VStack {
                    HStack{
                        Text("Password")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                            .opacity(0.4)
                        Spacer()
                    }
                   
                    SecureField("",text:$mainModule.password)
                     
                        .foregroundColor(.black)
                        .font(.system(size:10))
                        .background(
                            Rectangle()
                                .frame(width: WKInterfaceDevice.current().screenBounds.width - 30, height: 1)
                                .foregroundColor(.black)
                            ,alignment: .bottom
                        )
                }
                .padding(.horizontal,15)
                VStack {
                    Button {
                        mainModule.Loginln {
                            screen = "OrderScreen"
                        } error: {
                            print(123)
                        }

                    } label: {
                        Text("Sign ln")
                            .frame(width: WKInterfaceDevice.current().screenBounds.width - 30, height: 35)
                            .background(
                                Capsule()
                                    .foregroundColor(Color("lightOrange"))
                            )
                    }
                    .buttonStyle(PlainButtonStyle())

                }
            }
        }
        .frame(width: WKInterfaceDevice.current().screenBounds.width, height: WKInterfaceDevice.current().screenBounds.height)
        .background(
            Color("MyOrange")
        )
    }
}

//struct SignInScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInScreen()
//    }
//}
