//
//  EntryTableViewCell.swift
//  Ios Journal Coredata
//
//  Created by Nicolas Rios on 2/15/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

import UIKit

class EntryTableViewCell: UITableViewCell {
    
    var entry: Entry? {
        didSet {
            setUpViews()
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var timeStampLabel: UILabel!
    
    

    private func setUpViews() {
        guard let entry = entry else {return}
        titleLabel?.text = entry.title
        let formDate = DateFormatter()
        formDate.dateFormat = "yyy-MM-dd  hh:mm a"
        timeStampLabel?.text = formDate.string(from: entry.timestamp!)
        bodyLabel?.text = entry.bodyText
    }
}
