import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutSetting()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button tapped")
    }
    
    func layoutSetting() {
        navigationItem.hidesBackButton = true
        
        startButton.layer.cornerRadius = 31.0
    }
}
