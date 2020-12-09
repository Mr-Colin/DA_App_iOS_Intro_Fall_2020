//
//  EventsViewController.swift
//  DA App
//
//  Created by Guillermo Colin on 11/19/20.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    

    
    
    @IBOutlet var eventTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.eventTableView.register(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "eventCell")
        self.eventTableView.layer.cornerRadius = 5
        self.eventTableView.clipsToBounds = true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.eventTableView.dequeueReusableCell(withIdentifier: "eventCell") as! EventTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
