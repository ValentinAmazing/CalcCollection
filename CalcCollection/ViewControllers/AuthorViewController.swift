//
//  AuthorViewController.swift
//  CalcCollection
//
//  Created by Vlad Post on 3/7/24.
//

import UIKit

final class AuthorViewController: UIViewController {
    
    @IBOutlet var photos: [UIImageView]!
    @IBOutlet var nameLabels: [UILabel]!
    @IBOutlet var ageLabels: [UILabel]!
    @IBOutlet var professionLabels: [UILabel]!
    @IBOutlet var definitions: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Authors"
        tabBarItem = UITabBarItem(title: "Authors", image: UIImage(systemName: "person.2.fill"), tag: 1)

        setUpAuthorsNames()
    }
    
    // MARK:  Распеделяем данные авторов по лейблам и фоткам
    func setUpAuthorsNames() {
        let authors = MockData.generateMockAuthors()
        for (index, author) in authors.enumerated() {
            guard index < nameLabels.count else { break }
            nameLabels[index].text = author.name
        }
    }
}


