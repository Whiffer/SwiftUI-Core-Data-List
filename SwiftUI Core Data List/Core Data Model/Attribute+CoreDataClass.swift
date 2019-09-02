//
//  Attribute+CoreDataClass.swift
//  SwiftUI Core Data Test
//
//  Created by Chuck Hartman on 8/19/19.
//  Copyright © 2019 ForeTheGreen. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Attribute)
public class Attribute: NSManagedObject, Identifiable {
    
    //MARK: Helpers
    
    class func count() -> Int {
        
        let context = CoreData.stack.context
        
        let fetchRequest: NSFetchRequest<Attribute> = Attribute.fetchRequest()
        
        do {
            let count = try context.count(for: fetchRequest)
            return count
        } catch let error as NSError {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    }
    
    class func allInOrder() -> [Attribute] {
        
        let dataSource = CoreDataDataSource<Attribute>(sortKey1: "item.order",
                                                       sortKey2: "order",
                                                       sectionNameKeyPath: "item.name")
        let objects = dataSource.fetch()
        return objects
    }
    
    class func newAttribute() -> Attribute {
        
        return Attribute(context: CoreData.stack.context)
    }
    
    class func createAttributeFor(item: Item, name: String, order: Int?) -> Attribute {
        
        let attribute = Attribute.newAttribute()
        attribute.name = name
        attribute.order = Int32(order ?? 0)
        attribute.item = item
        CoreData.stack.save()
        return attribute
    }
    
    #if DEBUG
    class func preview() -> Attribute {
        
        let attributes =  Attribute.allInOrder()
        if attributes.count > 0 {
            return attributes.first!
        } else {
            let item = Item.createItem(name: "Item Preview", order: 999)
            return Attribute.createAttributeFor(item: item, name: "Attribute Preview", order: 999)
        }
    }
    #endif
    
}
