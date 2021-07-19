//
//  ThirdStartViewController.swift
//  Module-7
//
//  Created by A Erokhina on 23.06.2021.
//

import UIKit

class ThirdStartViewController: UIViewController {
    
    
    private var builtinVC: ThirdBuiltinViewController?
    private var mainColor: UIColor = .white
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ThirdBuiltinViewController, segue.identifier == "Embeded"
        {
            builtinVC = vc
            vc.delegateSecondary = self
        }
    }

    @IBAction func changeBuiltinGreen(_ sender: Any) {
        builtinVC?.setColor(UIColor.green)

    }
    
    @IBAction func changeBuiltinYellow(_ sender: Any) {
        builtinVC?.setColor(UIColor.yellow)

    }
    
    @IBAction func changeBuiltinPurple(_ sender: Any) {
        builtinVC?.setColor(UIColor.purple)
    }
    
    func updateBackgroundColor(){
        view.backgroundColor = mainColor
    }

    }

extension ThirdStartViewController: ChangeColorControllerDelegate {
    func setColor (_ programColor: UIColor) {
        self.mainColor = programColor
        updateBackgroundColor()
    }
    
    

}
