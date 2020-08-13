//
//  Scoring.swift
//  swiftUInotes
//
//  Created by Anousha Farshid on 6/27/20.
//  Copyright © 2020 Anousha Farshid. All rights reserved.
//

import Foundation
import CoreData

public class Scoring:NSManagedObject, Identifiable{
    @NSManaged public var clef:String?
    @NSManaged public var finalScore:Int32
    @NSManaged public var mistakes:Int16


}
extension Scoring{
    static func getAllScoring() -> NSFetchRequest<Scoring>{
        let request:NSFetchRequest<Scoring> = Scoring.fetchRequest() as! NSFetchRequest <Scoring>
        
        let sortDescriptor = NSSortDescriptor(key: "finalScore", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
