//
//  DetailViewController.swift
//  PassData2ManClosure0
//
//  Created by duycuong on 3/7/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

typealias Closure = ((_ dataText: String) -> Void)


class DetailViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var detailTextField: UITextField!
    
    var callClosure: Closure?
    
    var detailText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTextField.text = detailText
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Action
    @IBAction func backButton(_ sender: UIButton) {
        callClosure?(detailTextField.text!)
        navigationController?.popToRootViewController(animated: true)
    }
}
