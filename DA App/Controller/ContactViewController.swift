//
//  ContactViewController.swift
//  DA App
//
//  Created by Guillermo Colin on 12/8/20.
//

import UIKit

class ContactViewController:UIViewController{
    
    @IBOutlet var contactTableView: UITableView!
    
    var questions:[Question] = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.contactTableView.delegate = self
//        self.contactTableView.dataSource = self
        
        self.contactTableView.register(UINib(nibName: "QuestionTableViewCell", bundle: nil), forCellReuseIdentifier: "questionCell")
        
        self.questions.append(Question(question: "Your First Name*", hint: "First Name"))
        self.questions.append(Question(question: "Your Last Name*", hint: "Last Name"))
        self.questions.append(Question(question: "Email Address*", hint: "student@email.com"))
        self.questions.append(Question(question: "Phone Number (optional)", hint: "555-555-5555"))
        self.questions.append(Question(question: "Question for the Outreach Office", hint: "Please type your question here."))
    }
}

extension ContactViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.contactTableView.frame.height / 5
    }
}

extension ContactViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.contactTableView.dequeueReusableCell(withIdentifier: "questionCell") as! QuestionTableViewCell
        
        let question = self.questions[indexPath.row]
        
        cell.questionLabel.text = question.question
        cell.answerTextField.placeholder = question.hint
        
        return cell
    }
    
    
}
