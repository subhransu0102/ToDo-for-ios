//
//  TableViewCell.swift
//  ToDo
//
//  Created by Subhransu Siddhant Sagar on 27/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var todoTitle: UILabel!
    
    
    @IBOutlet weak var todoDetail: UILabel!
    

    @IBOutlet weak var status: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
