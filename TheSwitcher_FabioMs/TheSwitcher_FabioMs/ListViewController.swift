//
//  ViewController.swift
//  TheSwitcher_FabioMs
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var dataSource: DivisionsDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let divisions = [
            "Kitchen",
            "Living room",
            "Master bedroom",
            "Guest's bedroom"
        ]
        dataSource = DivisionsDataSource(With: divisions)
        tableView.dataSource = dataSource
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
              let detailViewController = segue.destination as? DetailViewController,
              let cell = tableView.cellForRow(at: indexPath) as? DivisionsCell else {
            return
        }
        detailViewController.division = cell.division
        detailViewController.lampState = cell.lightState
        
    }
}

