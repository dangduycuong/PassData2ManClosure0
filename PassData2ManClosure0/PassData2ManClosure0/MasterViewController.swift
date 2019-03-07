//
//  ViewController.swift
//  PassData2ManClosure0
//
//  Created by duycuong on 3/7/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var masterTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailViewController
        detailVC?.detailText = masterTextField.text
        
        detailVC?.callClosure = { data in
            self.masterTextField.text = data
        }
    }

}

