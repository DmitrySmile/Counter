//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Смилевски on 07.11.2024.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var counter: UILabel!
    @IBOutlet private weak var history: UITextView!
    @IBOutlet private weak var reset: UIButton!
    @IBOutlet private weak var countMinus: UIButton!
    @IBOutlet private weak var countPlus: UIButton!
    private var result: Int = 0
    private var dateFormatter = DateFormatter()
    private var date = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func dateUpdate(){
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        date = dateFormatter.string(from: Date())
    }
    
    @IBAction private func counterPlusOne(_ sender: Any) {
        dateUpdate()
        result += 1
        counter.text = "Значение счетчика равно: \(result)"
        history.text += "\(date) Значение изменено на +1 \n"
    }
    @IBAction private func counterMinusOne(_ sender: Any) {
        dateUpdate()
        if result != 0{
            result -= 1
            history.text += "\(date) Значение изменено на -1 \n"
        }
        else{
            history.text += "\(date) Попытка уменьшить значение счетчика ниже 0 \n"
        }
        counter.text = "Значение счетчика равно: \(result)"
    }
    
    @IBAction private func resetAll(_ sender: Any) {
        dateUpdate()
        history.text += "\(date) Значение сброшено \n"
        result = 0
        counter.text = "Значение счетчика равно: \(result)"
    }
}

