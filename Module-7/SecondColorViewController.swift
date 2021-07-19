//
//  SecondColorViewController.swift
//  Module-7
//
//  Created by A Erokhina on 23.06.2021.
//

import UIKit

protocol ColorControllerDelegate {
    func setColor (_ color: String, programColor: UIColor)
}

class SecondColorViewController: UIViewController {
    var selectedColor = ""
    @IBOutlet weak var colorColorLabel: UILabel!
    var delegate: ColorControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorColorLabel.text = selectedColor
    }
        
    @IBAction func setGreenButton(_ sender: Any) {
        dismiss (animated: true, completion: nil)
        delegate?.setColor("Выбран зеленый", programColor: UIColor.green)
    }
    
    @IBAction func setBlueButton(_ sender: Any) {
        dismiss (animated: true, completion: nil)
        delegate?.setColor("Выбран синий", programColor: UIColor.blue)
    }
    
    @IBAction func setRedButton(_ sender: Any) {
        dismiss (animated: true, completion: nil)
        delegate?.setColor("Выбран красный", programColor: UIColor.red)
    }

}
