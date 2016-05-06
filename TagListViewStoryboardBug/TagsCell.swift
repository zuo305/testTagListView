//
//  TagsCell.swift
//  TagListViewStoryboardBug
//
//  Created by Jason Ji on 4/26/16.
//  Copyright © 2016 Jason Ji. All rights reserved.
//

import UIKit

class TagsCell: UITableViewCell {

    @IBOutlet weak var tagListView: TagListView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        tagListView.expectedWidth = UIScreen.mainScreen().bounds.size.width

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension TagsCell {
    func configure() {
        
        tagListView.removeAllTags()
        
        let number =  arc4random_uniform(20) + 2
        for i in 0...number
        {
            tagListView.addTag("backgirl \(i)")
        }
        
    }
}