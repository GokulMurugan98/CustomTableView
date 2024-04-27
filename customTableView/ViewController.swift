//
//  ViewController.swift
//  customTableView
//
//  Created by Gokul Murugan on 18/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet weak var tableViewTest: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableViewTest.register(nib, forCellReuseIdentifier: CustomTableViewCell.identifier)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = .purple
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210.0
    }
}

