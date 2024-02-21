//
//  ViewController.swift
//  TrejoAssignment7
//
//  Created by Christopher Joseph on 2/20/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var logic = Logic()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logic.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = logic.items[indexPath.row].name
        content.secondaryText = logic.items[indexPath.row].company
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // Perform segue when a cell is selected
            performSegue(withIdentifier: "toSecondViewController", sender: indexPath)
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondViewController" {
            
            guard let navigation = segue.destination as? SecondViewController else {
                return
            }
            
            if let indexPath = sender as? IndexPath {
                let selectedItem = logic.items[indexPath.row].details
                navigation.position = selectedItem
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

