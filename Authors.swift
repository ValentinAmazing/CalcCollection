//
//  Authors.swift
//  CalcCollection
//
//  Created by Vlad Post on 3/6/24.
//

import Foundation

struct Author {
    let photo: String
    let name: String
    let age: Int
    let profession: String
    let definition: String
}

struct MockData {
    static func generateMockAuthors() -> [Author] {
        var authors = [Author]()
        let author1 = Author(photo: "vlad",
                             name: "Влад",
                             age: 26,
                             profession: "Скуф",
                             definition: "Просточок - червячок")
        let author2 = Author(photo: "alexey",
                             name: "Алексей",
                             age: 37,
                             profession: "Крутой",
                             definition: "Супергерой из Минска")
        let author3 =  Author(photo: "valentin",
                              name: "Валентин",
                              age: 18,
                              profession: "Босс",
                              definition: "Рулит всей движухой")
        return authors
    }
}
