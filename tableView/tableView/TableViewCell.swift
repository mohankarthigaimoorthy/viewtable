//
//  TableViewCell.swift
//  tableView
//
//  Created by Imcrinox Mac on 16/12/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    let gradientLayer = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        gradientLayer.frame = self.bounds
        let colors1 = UIColor(white: 1.0, alpha: 0.2).cgColor
        let colors2 = UIColor(white: 1.0, alpha: 0.1).cgColor
        let colors3 = UIColor.clear.cgColor
        let colors4 = UIColor(white: 0.0, alpha: 0.05).cgColor
        
        gradientLayer.colors = [colors1,colors2,colors3,colors4]
        gradientLayer.locations = [0.0,0.04,0.95,1.0]
    
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
    }
    
    required init?(coder aDcoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
