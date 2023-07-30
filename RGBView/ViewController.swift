import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var colorView: UIView!
    
    @IBOutlet private var redValueLabel: UILabel!
    @IBOutlet private var greenValueLabel: UILabel!
    @IBOutlet private var blueValueLabel: UILabel!
    
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(0.6)
        colorView.layer.cornerRadius = 20
        changeColorView()
    }
    
    @IBAction private func redValueChanged() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        changeColorView()
    }
    @IBAction private func greenValueChanged() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        changeColorView()
    }
    @IBAction private func blueValueChanged() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        changeColorView()
    }
    
    private func changeColorView() {
        colorView.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

