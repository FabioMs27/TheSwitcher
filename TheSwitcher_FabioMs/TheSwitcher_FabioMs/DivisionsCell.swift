//
//  DivisionsCell.swift
//  TheSwitcher_FabioMs
//
//  Created by Fábio Maciel de Sousa on 10/02/21.
//

import UIKit

class DivisionsCell: UITableViewCell {
    @IBOutlet weak private var divisionLabel: UILabel!
    @IBOutlet weak private var lightSwitch: UISwitch!
    
    var division = String() {
        willSet { divisionLabel.text = newValue }
    }
    var lightState: Bool { lightSwitch.isOn }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
