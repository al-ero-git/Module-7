//
//  ThirdBuiltinViewController.swift
//  Module-7
//
//  Created by A Erokhina on 23.06.2021.
//

import UIKit

protocol ChangeColorControllerDelegate {
    func setColor (_ programColor: UIColor)
}

class ThirdBuiltinViewController: UIViewController {

    private var mainVC: ThirdStartViewController?
    private var builtinColor :UIColor = .white
    
    var delegateSecondary: ChangeColorControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeMainGreen(_ sender: Any) {
         delegateSecondary?.setColor(UIColor.green)
    }
    
    @IBAction func changeMainYellow(_ sender: Any) {
        delegateSecondary?.setColor(UIColor.yellow)
    }
        
    @IBAction func changeMainPurple(_ sender: Any) {
        delegateSecondary?.setColor(UIColor.purple)
    }
    
    func updateBackgroundColor(){
        self.view.backgroundColor = builtinColor

    }
    
    }
    extension ThirdBuiltinViewController: ChangeColorControllerDelegate {
        func setColor (_ programColor: UIColor) {
            self.builtinColor = programColor
            updateBackgroundColor()
        }

}

