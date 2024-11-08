//
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Смилевски on 07.11.2024.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet private weak var counterLabel: UILabel!
    
    @IBOutlet weak var historyTextView: UITextView!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
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
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        dateUpdate()
        result += 1
        counterLabel.text = "Значение счетчика равно: \(result)"
        historyTextView.text += "\(date) Значение изменено на +1 \n"
    }
    
    @IBAction func minusButtonTapped(_ sender: Any) {
        dateUpdate()
        if result != 0{
            result -= 1
            historyTextView.text += "\(date) Значение изменено на -1 \n"
        }
        else{
            historyTextView.text += "\(date) Попытка уменьшить значение счетчика ниже 0 \n"
        }
        counterLabel.text = "Значение счетчика равно: \(result)"
    }
    
    @IBAction func resetHistoryTextView(_ sender: Any) {
        dateUpdate()
        historyTextView.text += "\(date) Значение сброшено \n"
        result = 0
        counterLabel.text = "Значение счетчика равно: \(result)"
    }
}
