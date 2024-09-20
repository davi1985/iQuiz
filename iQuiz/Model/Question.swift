import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "How to declare a const in Swift?", answers: ["var", "let", "const"], correctAnswer: 1),
    Question(title: "What is the type for integers?", answers: ["Float", "Int", "Double"], correctAnswer: 1),
    Question(title: "How to start a function?", answers: ["func name() {}", "define name()", "function name(){}"], correctAnswer: 0),
    Question(title: "Company behind Swift?", answers: ["Microsoft", "OpenIA", "Apple"], correctAnswer: 2)
]
