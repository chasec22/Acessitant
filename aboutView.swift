//
//  aboutView.swift
//  Acessistant
//
//  Created by Chase Copeland on 12/24/23.
//

import SwiftUI

struct aboutView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    topBarView()
                }
                .frame(width: 400, height: 65)
                .background(Color("DarkBackground"))
                
            }   .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            
            
            
                .background(LinearGradient(gradient: Gradient(colors: [Color("LightBackground"), Color("DarkBackground")]), startPoint: .trailing, endPoint: .leading))
            Text("About")
        }
    }
}

#Preview {
    aboutView()
}
