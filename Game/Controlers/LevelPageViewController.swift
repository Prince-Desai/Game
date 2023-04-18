//
//  LevelPageViewController.swift
//  Game
//
//  Created by Prince Desai on 22/01/23.
//

import UIKit

class LevelPageViewController: UIViewController {

    @IBOutlet weak var easyModeLevale: UIButton!
    @IBOutlet weak var mediumModeLevale: UIButton!
    @IBOutlet weak var hardModeLevale: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        easyModeLevale
//        mediumModeLevale
//        hardModeLevale
    }
    
    @IBAction func esayPageTouchUp(_ sender: UIButton){
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let EsayLevelViewController: EsayLevelViewController = storyBoard.instantiateViewController(withIdentifier: "EsayLevelViewController") as! EsayLevelViewController
        self.navigationController?.pushViewController(EsayLevelViewController, animated: true)
        
    }
    @IBAction func  mediumPageTouchUp(_ sender: UIButton){
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let MidiumLevelViewController: MidiumLevelViewController = storyBoard.instantiateViewController(withIdentifier: "MidiumLevelViewController") as! MidiumLevelViewController
        self.navigationController?.pushViewController(MidiumLevelViewController, animated: true)
        
    }
    @IBAction func hardPageTouchUp(_ sender: UIButton){
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let HardLeavelViewController: HardLeavelViewController = storyBoard.instantiateViewController(withIdentifier: "HardLeavelViewController") as! HardLeavelViewController
        self.navigationController?.pushViewController(HardLeavelViewController, animated: true)
        
    }
    
}
