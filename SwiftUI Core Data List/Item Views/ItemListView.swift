//
//  ContentView.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 6/25/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//

import SwiftUI
import CoreData

struct ItemListView : View {
    
    @ObservedObject var dataSource = CoreDataDataSource<Item>()
    
    var body: some View {
        
        NavigationView {
            List() {
                
                Section(header: Text("All Items ".uppercased() ) )
                {
                    ForEach(dataSource.fetchedObjects) { item in
                        
                        HStack {
                            ItemListCell(item: item)
                            NavigationLink(destination: AttributeListView(item: item)) { EmptyView() }
                            Spacer()
                            ItemDetailDisclosureButton(item: item)
                        }
                    }
                }
            }
            .onAppear(perform: { self.onAppear() })
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Items"), displayMode: .large)
        }
    }
    
    public func onAppear() {
        
        self.dataSource.loadDataSource()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    
    static var previews: some View {
        
        NavigationView {
            ItemListView()
        }
    }
}
#endif
