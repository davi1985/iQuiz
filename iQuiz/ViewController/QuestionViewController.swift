import UIKit

class QuestionViewController: UIViewController {

    var points = 0;
    var questionNumber = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answersButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutSettings()
        questionSettings()
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        let success = questions[questionNumber].correctAnswer == sender.tag
       
        if success {
            points += 1
            
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(questionSettings), userInfo: nil, repeats: false)
        } else {
            navigateToResumeScreen()
        }
    }
    
    func navigateToResumeScreen() {
        performSegue(withIdentifier: "navigateToResumeScreen", sender: nil)
    }
    
    func layoutSettings() {
        navigationItem.hidesBackButton = true
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .center
        
        for button in answersButtons {
            button.layer.cornerRadius = 31
        }
    }
    
    @objc func questionSettings() {
        questionLabel.text = questions[questionNumber].title
        
        for button in answersButtons {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resumeViewController = segue.destination as? ResumeViewController else {
            return
        }
        
        resumeViewController.points = points
    }
}
