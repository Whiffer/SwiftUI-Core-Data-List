//
//  ItemDetailView.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 6/25/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI
import Combine

struct ItemDetailView : View {
    
    var item: Item
    
    var body: some View {
        
        Form {
            
            Section(header: Text("Item".uppercased())) {
                
                VStack {
                    HStack {
                        Text("Name: ").foregroundColor(.gray)
                        Spacer()
                    }
                    HStack {
                        Text(self.item.name)
                        Spacer()
                    }
                }
                
                VStack {
                    HStack {
                        Text("Order: ").foregroundColor(.gray)
                        Spacer()
                    }
                    HStack {
                        Text(String(self.item.order) )
                        Spacer()
                    }
                }
            }

        }
        .navigationBarTitle("Item Details", displayMode: .large)
    }
}

#if DEBUG
struct ItemDetailView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetailView(item: Item.preview() )
        }
    }
}
#endif
