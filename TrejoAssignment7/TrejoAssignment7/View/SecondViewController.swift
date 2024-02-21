//
//  SecondViewController.swift
//  TrejoAssignment7
//
//  Created by Christopher Joseph on 2/20/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var positionLabel: UILabel!
    
    var position = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        positionLabel.text = position
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
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
