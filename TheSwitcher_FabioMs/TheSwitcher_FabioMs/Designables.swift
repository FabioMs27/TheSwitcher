//
//  Designables.swift
//  TheSwitcher_FabioMs
//
//  Created by Fábio Maciel de Sousa on 11/02/21.
//

import UIKit

@IBDesignable
extension UITableView {
    @IBInspectable
    var removeBottomLine: Bool {
        get { false }
        set { tableFooterView = newValue ? UIView() : nil }
    }
}
