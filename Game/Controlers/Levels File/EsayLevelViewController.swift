//
//  EsayLevelViewController.swift
//  Game
//
//  Created by Prince Desai on 22/01/23.
//

import UIKit

class EsayLevelViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var pointCounterLebel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questionLebel1: UILabel!
    @IBOutlet weak var questionLebel2: UILabel!
    @IBOutlet weak var questionLebel3: UILabel!
    
    @IBOutlet weak var answerLebel: UILabel!
    
    var timer: Timer!
    var timerCount: Double = 10
    var score: Int = 0 
    
    
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var opretor: String = ""
    var answerOne: Int  = 0
    
    var currectAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTimer()
        rendomNUmber1()
        rendomNUmber2()
        opretors()
        getAnswer()
    }
    
    @IBAction func yesButton(_ sender: Any) {
//        if score >= 0{
            score = score-1
            pointCounterLebel.text = "\(score)"
            rendomNUmber2()
            rendomNUmber1()
            getAnswer()
            opretors()
        //}
    }
    
    @IBAction func noButton(_ sender: Any) {
        if score >= 0  {
            score = score+1
            pointCounterLebel.text = "\(score)"
            rendomNUmber2()
            rendomNUmber1()
            getAnswer()
            answerOne
        }
    }
    
    func rendomNUmber1(){
        
        firstNumber  = Int.random(in: 1...100)
        questionLebel1.text = "\(firstNumber)"
    }
    
    func opretors(){
        let operators1: [String] = ["+","-","*","/"]
        opretor.append(operators1.randomElement() ?? "")
        questionLebel2.text = opretor
    }
    
    func rendomNUmber2(){
        secondNumber  = Int.random(in: 1...100)
        questionLebel3.text = "\(secondNumber)"
    }
    
    private func getAnswer(){
        switch opretor{
        case  "+":
            answerOne = firstNumber + secondNumber
            answerLebel.text = "\(answerOne)"
          
        case  "-":
            answerOne = firstNumber - secondNumber
            answerLebel.text = "\(answerOne)"
            
        case  "*":
            answerOne = firstNumber * secondNumber
            answerLebel.text = "\(answerOne)"
            
        case  "/":
            answerOne = firstNumber / secondNumber
            answerLebel.text = "\(answerOne)"
            
         default:
            break
//            displayAlert(massage: "Game Over")
        }
    }
}
extension EsayLevelViewController{
    private func displayAlert(massage: String){
        let alert: UIAlertController = UIAlertController(title: "Game Over\n", message: "Score: \(score)\n High score: \(score)", preferredStyle: .alert)
        
        let okButten: UIAlertAction = UIAlertAction(title: "Play Again", style: .default){ _ in

        }
        let tryAgain: UIAlertAction = UIAlertAction(title: "Back", style: .destructive) { _ in
            
            self.navigationController?.popViewController(animated: true)
        }
        alert.addAction(okButten)
        alert.addAction(tryAgain)
        present(alert, animated: true, completion: nil)
    }
    private func configureTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.10, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        progressBar.setProgress(1, animated: true)
    }
    @objc
    func updateTime(){
        if timerCount > 0{
            timerCount = timerCount - 0.10
            progressBar.setProgress(Float(timerCount/10.0), animated: true)
        }else{
            displayAlert(massage: "game Over")
            timer.invalidate()
        }
    }
    private func setCornerRadius(view: UIView, radius: CGFloat){
        view.layer.masksToBounds = true
        view.layer.cornerRadius = radius
    }
}
