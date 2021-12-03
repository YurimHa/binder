//
//  CardTableViewCell.swift
//  binder
//
//  Created by 하유림 on 2021/11/26.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var classColor: UILabel!
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var subjectName: UILabel!
    @IBOutlet weak var subjectGoal: UILabel!
    @IBOutlet weak var studentEmail: UILabel!
    @IBOutlet weak var contentViewCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentViewCell.clipsToBounds = false
        contentViewCell.layer.cornerRadius = 15
        contentViewCell.backgroundColor = UIColor.white
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
