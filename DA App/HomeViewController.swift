//
//  HomeViewController.swift
//  DA App
//
//  Created by Guillermo Colin on 12/7/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var aboutUsButton: UIButton!
    @IBOutlet var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.aboutUsButton.layer.cornerRadius = 5
        self.aboutUsButton.clipsToBounds = true
        
        self.homeTableView.register(UINib(nibName: "ThreePartsTableViewCell", bundle: nil), forCellReuseIdentifier: "ThreePartsCell")
        self.homeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "secondCell")
        self.homeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "thirdCell")
        //self.homeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "defaultCell")
    }
}

extension HomeViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.homeTableView.frame.height / 3
    }           
}

extension HomeViewController:UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

       if indexPath.row == 0 {
        let cell = self.homeTableView.dequeueReusableCell(withIdentifier: "ThreePartsCell") as! ThreePartsTableViewCell
        return cell
       }
        if indexPath.row == 1 {
            let cell = self.homeTableView.dequeueReusableCell(withIdentifier: "secondCell")!
            cell.textLabel?.text = "second cell"
            return cell
        }else{
            let cell = self.homeTableView.dequeueReusableCell(withIdentifier: "thirdCell")!
            cell.textLabel?.text = "third cell"
            return cell
        }
    }
    
    
}
