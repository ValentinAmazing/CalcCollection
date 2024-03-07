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

var authors =
        [
            Author(photo: "vlad",
                   name: "Влад",
                   age: 26,
                   profession: "Скуф",
                   definition: "Просточок - червячок"),
            Author(photo: "alexey",
                   name: "Алексей",
                   age: 37,
                   profession: "Крутой",
                   definition: "Супергерой из Минска"),
            Author(photo: "valentin",
                   name: "Валентин",
                   age: 18,
                   profession: "Босс",
                   definition: "Рулит всей движухой")
        ]
