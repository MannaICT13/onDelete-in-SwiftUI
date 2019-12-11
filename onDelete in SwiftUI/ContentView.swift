//
//  ContentView.swift
//  onDelete in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 11/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var arrayOfName = ["Manna","Munna","Shaon","Limon","Lalon","Shumon","Rakibul","Milon","Harun","Liton"]
    
    var body: some View {
        
        NavigationView{
          
        VStack{
            
            List{
                
            ForEach(arrayOfName ,id: \.self){
                
                Text("\($0)")
            }
            .onDelete(perform: removeRows(at:))
            
            
            }
        }
        .navigationBarTitle(Text("onDelete"),displayMode: .inline)
        
        .navigationBarItems(leading: EditButton())
        }
        
        
    }
    
    func removeRows(at offsets : IndexSet ){
        
        arrayOfName.remove(atOffsets : offsets)
        
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
