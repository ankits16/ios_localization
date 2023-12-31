//
//  ViewController.swift
//  DjangoLocalization
//
//  Created by Ankit Sachan on 31/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var navButton : UIButton?
    @IBOutlet weak var changeLocaleButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LocalizationManager.shared.locale = Locale(identifier: "hi")
        // Do any additional setup after loading the view.
        changeLocaleButton?.setTitle("change_language".localized, for: .normal)
        navButton?.setTitle("navigate_to_strings".localized, for: .normal)
    }

    @IBAction func showStrings(){
        let strVc = StringsListViewController(nibName: "StringsListViewController", bundle: nil)
        self.navigationController?.pushViewController(strVc, animated: true)
    }

    @IBAction func changeLocale(){
        
    }
}

