import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var countALabel: UILabel!
    @IBOutlet weak var countELabel: UILabel!
    @IBOutlet weak var countILabel: UILabel!
    @IBOutlet weak var countOLabel: UILabel!
    @IBOutlet weak var countULabel: UILabel!

    @IBOutlet weak var viewA: UIView!
    @IBOutlet weak var viewE: UIView!
    @IBOutlet weak var viewI: UIView!
    @IBOutlet weak var viewO: UIView!
    @IBOutlet weak var viewU: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countALabel.text = "x0"
        countELabel.text = "x0"
        countILabel.text = "x0"
        countOLabel.text = "x0"
        countULabel.text = "x0"
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)

    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        guard let text = textField.text?.lowercased() else { return }

        var countA = 0
        var countE = 0
        var countI = 0
        var countO = 0
        var countU = 0

        for char in text {
            switch char {
            case "a":
                countA += 1
            case "e":
                countE += 1
            case "i":
                countI += 1
            case "o":
                countO += 1
            case "u":
                countU += 1
            default:
                continue
            }
        }

        countALabel.text = "x\(countA)"
        countELabel.text = "x\(countE)"
        countILabel.text = "x\(countI)"
        countOLabel.text = "x\(countO)"
        countULabel.text = "x\(countU)"
        
        viewA.backgroundColor = countA > 0 ? UIColor.green : UIColor.lightGray
                viewE.backgroundColor = countE > 0 ? UIColor.green : UIColor.lightGray
                viewI.backgroundColor = countI > 0 ? UIColor.green : UIColor.lightGray
                viewO.backgroundColor = countO > 0 ? UIColor.green : UIColor.lightGray
                viewU.backgroundColor = countU > 0 ? UIColor.green : UIColor.lightGray
    }


}

