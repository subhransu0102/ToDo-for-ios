//
//  FilteredTableViewCell.swift
//  ToDo
//
//  Created by Subhransu Siddhant Sagar on 02/03/23.
//

import UIKit

class FilteredTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Ftitlelebel: UILabel!
    
  
    @IBOutlet weak var Fdetaillebel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
