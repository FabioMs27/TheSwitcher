//
//  DetailViewController.swift
//  TheSwitcher_FabioMs
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak private var lampImageView: UIImageView!
    @IBOutlet weak private var divisionTextLabel: UILabel!
    @IBOutlet weak private var lampStateLabel: UILabel!
    
    var division = ""
    var lampState = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        divisionTextLabel.text = division.formattedDivision
        lampStateLabel.text = lampState ? "ON" : "OFF"
        lampImageView.image = lampState ? #imageLiteral(resourceName: "light_image_ON") : #imageLiteral(resourceName: "light_image_OFF")
        navigationItem.title = division
    }

}
