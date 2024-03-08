//
//  CalcListViewController.swift
//  CalcCollection
//
//  Created by Valentin on 08.03.2024.
//

import UIKit

class CalcListViewController: UITableViewController {

    let calcList = CalcListManager.shared.calcTitles
        
}

//MARK: - UITableViewDataSource
extension CalcListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        calcList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "calcCell", for: indexPath)
        let calcus = calcList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = calcus
        
        cell.contentConfiguration = content
        
        return cell
    }
   
}
