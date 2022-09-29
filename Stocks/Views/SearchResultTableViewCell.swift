//
//  SearchResultTableViewCell.swift
//  Stocks
//
//  Created by Roshan Seth on 9/14/22.
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {
    static let identifier = "SearchResultTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
    {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }

}
