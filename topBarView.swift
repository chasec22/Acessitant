//
//  topBarView.swift
//  Acessistant
//
//  Created by Chase Copeland on 12/23/23.
//

import SwiftUI

struct topBarView: View {
    var body: some View {
        HStack{
            Image(systemName: "line.3.horizontal")
                .font(.system(size: 45))
            //.padding(.trailing, 80)
            
            Spacer()
            
            Text("Acessistant")
                .font(.system(size:35))
                .foregroundStyle(Color("TextColor"))
                .padding(.leading, 20)
            
            Spacer()
            NavigationLink(destination:{
                SwiftUIView().navigationBarBackButtonHidden(true)
            },
                           label:{
            Image(systemName: "suit.spade")
                .foregroundColor(Color("TextColor"))
                .padding(.horizontal, 30)
                .font(.system(size: 30))
                .background(){
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient (colors: [Color(Color("DarkBackground")), Color("LightBackground")]), startPoint: .trailing, endPoint: .leading)
                        )
                        .frame(width: 50, height: 50)
                        .background(){
                            Circle()
                                .fill(Color.black)
                                .frame(width: 54, height: 54)
                        }
                    
                    
                }
        })

                        }
                    
                    
                }
        }

#Preview {
    topBarView()
}
