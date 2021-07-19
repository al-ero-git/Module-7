//
//  SecondStartViewController.swift
//  Module-7
//
//  Created by A Erokhina on 23.06.2021.
//

import UIKit

class SecondStartViewController: UIViewController {

    @IBOutlet weak var startColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondColorViewController, segue.identifier == "SecondColor" {
            vc.selectedColor = startColorLabel.text!
            vc.delegate = self
        }
    }


}

extension SecondStartViewController: ColorControllerDelegate {
    func setColor (_ color: String,  programColor: UIColor) {
        startColorLabel.text = color
        startColorLabel.textColor = programColor
    }

    
}
