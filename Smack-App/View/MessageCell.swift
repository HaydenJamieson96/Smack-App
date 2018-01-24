//
//  MessageCell.swift
//  Smack-App
//
//  Created by Hayden Jamieson on 24/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    @IBOutlet weak var userImg: CircleImage!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messageBodyLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(message: Message) {
        messageBodyLbl.text = message.message
        userNameLbl.text = message.userName.capitalized
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        //timeStampLbl.text = message.timeStamp
    }

}
