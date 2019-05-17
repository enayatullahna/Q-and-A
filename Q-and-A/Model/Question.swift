//
//  Question.swift
//  Q-and-A
//
//  Created by Enayatullah Naseri on 5/16/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation


struct Question: Equatable {
    let question: String
    let asker: String
    let answer: String?
    let answerer: String?
    
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
