//
//  listRowViewView.swift
//  Acessistant
//
//  Created by Chase Copeland on 12/30/23.
//

import SwiftUI

struct listRowViewView: View {
    
    let save: saveInfo
    
    var body: some View {
        Text(save.title)
    }
}

struct LRPreviews: PreviewProvider{
    
    static var save1 = saveInfo(title: "Save1", Finished: false)
    
    static var previews: some View{
        listRowViewView(save: save1)
    }
}

