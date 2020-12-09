//
//  Question.swift
//  DA App
//
//  Created by Guillermo Colin on 12/8/20.
//

import Foundation

struct Question{
    var question:String = ""
    var hint:String = ""
    
    init(question:String,hint:String){
        self.question = question
        self.hint = hint
    }
}
