import UIKit

class ResumeViewController: UIViewController {
    
    var points: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentagelabel: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutSetting()
        resumeSetting()
    }

    func layoutSetting() {
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 31.0
    }
    
    func resumeSetting() {
        guard let points = points else { return }
        resultLabel.text = "You got \(points) of \(questions.count) questions."
        let percentage = (points * 100) / questions.count
        percentagelabel.text = "Percentage: \(percentage)%"
    }
}
