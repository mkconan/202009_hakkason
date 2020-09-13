//
//  ChatListViewController.swift
//  ChatAppWithFirebase
//
//  Created by 杉江　孝士 on 2020/09/13.
//  Copyright © 2020 杉江　孝士. All rights reserved.
//

import UIKit
class ChatListViewController: UIViewController{
    
    @IBOutlet weak var ChatListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class ChatlListTableViewCell: UITableViewCell{
    
    @IBOutlet weak var UserImageView: UIImageView!
    @IBOutlet weak var LatestMessageLabel: UILabel!
    @IBOutlet weak var PartnerLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool,animated:Bool){
        super.setSelected(selected, animated:animated)
    }
}
