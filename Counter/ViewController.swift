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
    
    @IBOutlet private weak var historyTextView: UITextView!
    
    @IBOutlet private weak var resetButton: UIButton!
    
    @IBOutlet private weak var plusButton: UIButton!
    
    @IBOutlet private weak var minusButton: UIButton!
    
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
    
    @IBAction private func plusButtonTapped(_ sender: Any) {
        dateUpdate()
        result += 1
        counterLabel.text = "Значение счетчика равно: \(result)"
        historyTextView.text += "\(date) Значение изменено на +1 \n"
    }
    
    @IBAction private func minusButtonTapped(_ sender: Any) {
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
    
    @IBAction private func resetHistoryTextView(_ sender: Any) {
        dateUpdate()
        historyTextView.text += "\(date) Значение сброшено \n"
        result = 0
        counterLabel.text = "Значение счетчика равно: \(result)"
    }
}
