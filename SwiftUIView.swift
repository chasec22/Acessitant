//
//  SwiftUIView.swift
//  Acessistant
//
//  Created by Chase Copeland on 12/21/23.
//



import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    topBarView()
                }
                .frame(width: 400, height: 65)
                .background(Color("DarkBackground"))
                
                
                
                Text("Welcome To Acessistant!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 25)
                    .foregroundColor(Color("TextColor"))
                
                
                
                Text("Acessitant shoots to be your one stop shop when it comes Studying, Assignment tracking and all things school related!")
                    .font(.body)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 5)
                    .padding(.horizontal, 10.0)
                    .foregroundColor(Color("TextColor"))
                
                List{
                    FunctionsList()
                }
                .listStyle(GroupedListStyle())
                .scrollContentBackground(.hidden)
                .background(Color("DarkBackground"))
                
            }   .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
                .background(LinearGradient(gradient: Gradient(colors: [Color("LightBackground"), Color("DarkBackground")]), startPoint: .trailing, endPoint: .leading))
            
            
        }
    }
}

#Preview {
    SwiftUIView()
}
