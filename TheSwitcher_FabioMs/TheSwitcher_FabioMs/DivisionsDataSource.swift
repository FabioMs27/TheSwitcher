//
//  DivisionsDataSource.swift
//  TheSwitcher_FabioMs
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

import UIKit

class DivisionsDataSource: NSObject {
    let divisions = ["Kitchen","Living room","Master bedroom","Guest's bedroom"]
}

extension DivisionsDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divisions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DivisionsCell") as? DivisionsCell
        cell?.division = divisions[indexPath.row]
        return cell ?? UITableViewCell()
    }
}
