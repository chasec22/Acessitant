//
//  addProjectView.swift
//  Acessistant
//
//  Created by Chase Copeland on 12/31/23.
//

import SwiftUI

struct addProjectView: View {
    
    @State var assignmentToAdd: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    topBarView()
                        .frame(width: 400, height: 65)
                        .background(Color("DarkBackground"))
                    
                    Spacer()
                    
                    TextField("", text: $assignmentToAdd, prompt: Text("Enter Assignment Here").foregroundStyle(Color("LightBackground")))
                        .padding(.horizontal)
                        .frame( maxWidth: .infinity, maxHeight: 80)
                        .cornerRadius(10)
                        .background(Color("DarkBackground"))
                        .foregroundStyle(Color("TextColor"))
                    
                    Spacer()
                    Button(action: {
                        
                    },
                           label: {
                        Text("Save Item")
                            .foregroundStyle(Color("TextColor"))
                            .font(.system(size: 22))
                    })
                    .padding(.top, 16.0)
                    
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .background(LinearGradient(gradient: Gradient(colors: [Color("LightBackground"), Color("DarkBackground")]), startPoint: .trailing, endPoint: .leading))
            }
        }
    }
}

#Preview {
    addProjectView()
}
