//
//  AttributeListView.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 6/25/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI
import Combine

struct AttributeListView : View {
    
    var item: Item
    
    @ObservedObject var dataSource = CoreDataDataSource<Attribute>(predicateKey: "item")
    
    var body: some View {
        
        List() {
            
            Section(header: Text("Attributes for \(self.item.name)".uppercased())) {
                
                ForEach(dataSource.loadDataSource(relatedTo: self.item)) { attribute in
                    
                    HStack {
                        
                        AttributeListCell(attribute: attribute)
//                        NavigationLink(destination: AttributeDetailView(attribute: attribute))
//                        { EmptyView() }
                        Spacer()
                        AttributeDetailDisclosureButton(attribute: attribute)
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle(Text("Item Attributes"), displayMode: .large)
    }
}

#if DEBUG
struct AttributeListView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            AttributeListView(item: Item.preview() )
                .environmentObject(Model())
        }
    }
}
#endif
