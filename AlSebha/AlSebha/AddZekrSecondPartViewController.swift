//
//  AddZekrSecondPartViewController.swift
//  AlSebha
//
//  Created by Ahmed Elbasha on 10/30/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class AddZekrSecondPartViewController: UIViewController {

    @IBOutlet weak var tasbehTargetTextField: UITextField!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var addZekrLabel: UILabel!
    @IBOutlet weak var createZekrButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tasbehTargetTextField.font = UIFont.systemFont(ofSize: 87, weight: .bold)
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        print("returnButtonPressed")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func languageButtonPressed(_ sender: Any) {
        print("languageButtonPressed")
    }
    
    @IBAction func createZekrButtonPressed(_ sender: Any) {
        print("createZekrButtonPressed")
        let homeVC = storyboard?.instantiateViewController(withIdentifier: "Home")
        self.present(homeVC!, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
