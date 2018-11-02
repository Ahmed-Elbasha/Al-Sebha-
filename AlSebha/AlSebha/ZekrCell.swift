//
//  ZekrCell.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 11/2/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class ZekrCell: UITableViewCell {

    @IBOutlet weak var zekrCompleteView: UIView!
    @IBOutlet weak var zekrCompleteLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
