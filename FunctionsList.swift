//
//  FunctionsList.swift
//  Acessistant
//
//  Created by Chase Copeland on 12/21/23.
//

import SwiftUI

struct FunctionsList: View {
    var body: some View {
        
        @State var options: [String] = ["Project and Assignment List  📝", "Periodic Table  🧪", "Advanced Calculator  🧮", "About", "Help"]
        
        
        // NavigationView{
        NavigationLink(destination:{
            projectList().navigationBarBackButtonHidden(true)},
                       label:{
            Text(options[0])
                .fontWeight(.semibold)
                .foregroundColor(Color("TextColor"));})
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .listRowBackground(LinearGradient(gradient: Gradient(colors: [Color(red: 0.0392, green: 0.388, blue: 0.388), Color(red: 0.0275, green: 0.1412, blue: 0.2313)]), startPoint: .trailing, endPoint: .leading))
        
        NavigationLink(destination:{
            periodicTable().navigationBarBackButtonHidden(true)},
                       label:{
            Text(options[1])
                .fontWeight(.semibold)
                .foregroundColor(Color("TextColor"));})
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .listRowBackground(LinearGradient(gradient: Gradient(colors: [Color(red: 0.0392, green: 0.388, blue: 0.388), Color(red: 0.0275, green: 0.1412, blue: 0.2313)]), startPoint: .trailing, endPoint: .leading))
        
        NavigationLink(destination:{
            calcView().navigationBarBackButtonHidden(true)},
                       label:{
            Text(options[2])
                .fontWeight(.semibold)
                .foregroundColor(Color("TextColor"));})
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .listRowBackground(LinearGradient(gradient: Gradient(colors: [Color(red: 0.0392, green: 0.388, blue: 0.388), Color(red: 0.0275, green: 0.1412, blue: 0.2313)]), startPoint: .trailing, endPoint: .leading))
        
        NavigationLink(destination:{
            aboutView().navigationBarBackButtonHidden(true)},
                       label:{
            Text(options[3])
                .fontWeight(.semibold)
                .foregroundColor(Color("TextColor"));})
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .listRowBackground(LinearGradient(gradient: Gradient(colors: [Color(red: 0.0392, green: 0.388, blue: 0.388), Color(red: 0.0275, green: 0.1412, blue: 0.2313)]), startPoint: .trailing, endPoint: .leading))
        
        NavigationLink(destination:{
            helpView().navigationBarBackButtonHidden(true)},
                       label:{
            Text(options[4])
                .fontWeight(.semibold)
                .foregroundColor(Color("TextColor"));})
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .listRowBackground(LinearGradient(gradient: Gradient(colors: [Color(red: 0.0392, green: 0.388, blue: 0.388), Color(red: 0.0275, green: 0.1412, blue: 0.2313)]), startPoint: .trailing, endPoint: .leading))
    }
    
}
    

#Preview {
    SwiftUIView()
}
