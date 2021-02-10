//
//  ViewController.swift
//  TheSwitcher_FabioMs
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let dataSource = DivisionsDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailViewController = segue.destination as? DetailViewController,
                  let cell = tableView.cellForRow(at: indexPath) as? DivisionsCell else {
                return
            }
            detailViewController.division = cell.division
            detailViewController.lampState = cell.lightState
        }
    }

}

