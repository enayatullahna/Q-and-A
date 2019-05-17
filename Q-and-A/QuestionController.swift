//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Enayatullah Naseri on 5/16/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation


class QuestionController {
    private(set) var questions: [Question] = []
    
    func create(question: String, askBy asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, aswerer: String) {
        guard let index = questions.index(of: question) else { return }
        let questioning = Question(question: question.question, asker: question.asker, answer: answer, answerer: aswerer)
        questions.remove(at: index)
        questions.insert(questioning, at: index)
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
}
