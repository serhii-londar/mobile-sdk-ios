//
//  SettingsItemCell.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 4/13/19.
//

import Foundation

typealias SettingsItemCellAction = () -> Void

class SettingsItemCell: UITableViewCell {
    @IBOutlet weak var icon: UIImageView!
    var action: SettingsItemCellAction?
}
