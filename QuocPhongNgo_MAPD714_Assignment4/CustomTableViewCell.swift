/**
 * Assignment 4
 * File Name:    CustomTableViewCell.swift
 * Author:         Quoc Phong Ngo
 * Student ID:   301148406
 * Version:        1.0
 * Date Created:   November 12th, 2021
 */

import UIKit

class CustomTableViewCell: UITableViewCell {

    weak var useButton: UIButton!
    
    var name:String = "" {
        didSet {
            if(name != oldValue) {
                nameLabel.text = name
            }
        }
    }
    var dueDate:String = "" {
        didSet {
            if(dueDate != oldValue)
            {
                dueDateLabel.text = dueDate
            }
        }
    }
    var nameLabel: UILabel!
    var dueDateLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // add a new subview for the new label
        //let nameLabelRect = CGRect(x:0, y:5, width: 70, height: 15)
        //let nameMarker = UILabel(frame: nameLabelRect)
        //nameMarker.textAlignment = NSTextAlignment.right
        //nameMarker.text = "Movie Name:"
        //nameMarker.font = UIFont.boldSystemFont(ofSize: 12)
        //contentView.addSubview(nameMarker)
        
        // add a new subview for the new label
        //let genreLabelRect = CGRect(x:0, y:26, width: 70, height: 15)
        //let genreMarker = UILabel(frame: genreLabelRect)
        //genreMarker.textAlignment = NSTextAlignment.right
        //genreMarker.text = "Genre Name:"
        //genreMarker.font = UIFont.boldSystemFont(ofSize: 12)
        //contentView.addSubview(genreMarker)
        
        let nameValueRect = CGRect(x:80, y:0, width: 200, height: 40)
        nameLabel = UILabel(frame: nameValueRect)
        contentView.addSubview(nameLabel)
        
        let genreValueRect = CGRect(x:80, y:16, width: 200, height: 40)
        dueDateLabel = UILabel(frame: genreValueRect)
        contentView.addSubview(dueDateLabel)
        
        //Initialize Use button
        let useButton = UIButton(frame: CGRect(x: 8, y: 4.5, width: 48, height: 28))
        self.useButton = useButton
        //super.init(style: .default, reuseIdentifier: "moviesTable")
        self.frame = frame
        
        //Setup Use button
        addSubview(useButton)
        useButton.setTitle("Edit", for: .normal)
        useButton.setTitleColor(.blue, for: .normal)
        useButton.center.y = self.center.y
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
