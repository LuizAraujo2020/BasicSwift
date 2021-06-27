//
//  Livro+CoreDataProperties.swift
//  Livrarios
//
//  Created by Luiz Carlos da Silva Araujo on 26/06/21.
//
//

import Foundation
import CoreData


extension Livro {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Livro> {
        return NSFetchRequest<Livro>(entityName: "Livro")
    }

    @NSManaged public var titulo: String?
    @NSManaged public var autor: String?
    @NSManaged public var ano: Int16
    @NSManaged public var imageCapa: String?
    @NSManaged public var idLivro: Int16
    @NSManaged public var lido: Bool

}

extension Livro : Identifiable {

}
