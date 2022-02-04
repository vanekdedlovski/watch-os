//
//  OrderScreen.swift
//  clockOS WatchKit Extension
//
//  Created by bnkwsr2 on 04.02.2022.
//

import SwiftUI

struct OrderScreen: View {
    @Binding var screen : String
    @EnvironmentObject var mainModule : MainModule
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("\(mainModule.AllCouriers?.address ?? "")")
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                    Text("\(mainModule.AllCouriers?.date ?? "")")
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                }
                Spacer()
                VStack {
                    Button {
                        
                    } label: {
                        Image("location")
                            .resizable()
                            .frame(width: 15, height: 15)
                    }
                    .buttonStyle(PlainButtonStyle())

                }
            }
            .padding(.horizontal,40)
            .padding(.top,30)
            ScrollView(.vertical) {
                VStack(spacing: 10) {
                    ForEach(mainModule.AllCouriers?.dishes ?? [], id:\.id) { order in
                        
                        HStack {
                            VStack {Image("image1")
                                    .resizable()
                                    .frame(width: 100, height: 44)
                                    .cornerRadius(60)}
                            VStack(spacing: 5) {
                                Text("\(order.dishName)")
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    .font(.system(size: 12))
                                    
                                Text("\(order.count) pieces")
                                    .foregroundColor(.black)
                                    .font(.system(size: 12))
                            }
                        }
                    }
                }
            }
            .padding(.top,15)
        }
        .frame(width: WKInterfaceDevice.current().screenBounds.width, height: WKInterfaceDevice.current().screenBounds.height)
        .background(
            Color("MyOrange")
        )
        .onAppear {
            mainModule.GetAllCourier()
        }
    }
}

//struct OrderScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderScreen()
//    }
//}
