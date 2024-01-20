//
//  classList.swift
//  Acessistant
//
//  Created by Chase Copeland on 12/24/23.
//

import SwiftUI

struct projectList: View {
    
    @State var isEditing: Bool = false
    
    @State var Classes: [saveInfo] = [
        saveInfo(title: "1st Item", Finished: false),
        saveInfo(title: "2nd Item", Finished: false)
    ]
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    topBarView()
                }
                .frame(width: 400, height: 65)
                .background(Color("DarkBackground"))
                
                List{
                    ForEach(Classes){ item in
                        listRowViewView(save: item)
                            .foregroundStyle(Color("TextColor"))
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .listRowBackground(Color("DarkBackground"))
                    }
                    .onDelete(perform: deleteClass)
                    .onMove(perform: moveClass)
                }
                .listStyle(GroupedListStyle())
                .scrollContentBackground(.hidden)

                    .environment(\.editMode, .constant(self.isEditing ? EditMode.active : EditMode.inactive))
                HStack{
                    Spacer()
                    Button(action: {
                        self.isEditing.toggle()
                    }) {
                        Text(isEditing ? "Done" : "Edit")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("TextColor"))
                            .font(.system(size: 25)
                                  
                            )
                    }
                    Spacer()
                    NavigationLink(destination:{
                        addProjectView()
                    },
                                   label:{
                        Text("Add")
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("TextColor"))
                            .font(.system(size: 25))
                    }
                                   
                    )
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(LinearGradient(gradient: Gradient(colors: [Color("LightBackground"), Color("DarkBackground")]), startPoint: .trailing, endPoint: .leading))
            
            
            
        }
    }
    
    func deleteClass(indexSet: IndexSet){
        Classes.remove(atOffsets: indexSet)
    }
    
    func moveClass(from: IndexSet, to: Int){
        Classes.move(fromOffsets: from, toOffset: to)
    }
    
}



#Preview {
    projectList()
}
