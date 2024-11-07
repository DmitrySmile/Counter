//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Смилевски on 07.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var result: Int = 1
    
    @IBAction func counterPlusOne(_ sender: Any) {
        counter.text = "Значение счетчика: \(result)"
        result += 1
    }
    

}

