//
//  ChatListViewController.swift
//  ChatAppWithFirebase
//
//  Created by 杉江　孝士 on 2020/09/13.
//  Copyright © 2020 杉江　孝士. All rights reserved.
//

import UIKit
class ChatListViewController: UIViewController{
    private let cellId = "cellId"
    @IBOutlet weak var ChatListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ChatListTableView.delegate = self
        ChatListTableView.dataSource = self
        
    }
}
//Mark :-UITableViewDataSource,UITableViewDelegate
extension ChatListViewController:
UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ChatListTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        return cell
    }
    
    
}

class ChatlListTableViewCell: UITableViewCell{
    
    @IBOutlet weak var UserImageView: UIImageView!
    @IBOutlet weak var LatestMessageLabel: UILabel!
    @IBOutlet weak var PartnerLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        UserImageView.layer.cornerRadius = 35
    }
    
    
    override func setSelected(_ selected: Bool,animated:Bool){
        super.setSelected(selected, animated:animated)
    }
}
