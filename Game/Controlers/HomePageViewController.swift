//
//   HomePageViewController.swift
//  Game
//
//  Created by Prince Desai on 22/01/23.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func playButtonTouchUp(_ sender: UIButton) {
        
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let LevelPageViewController: LevelPageViewController = storyBoard.instantiateViewController(withIdentifier: "LevelPageViewController") as! LevelPageViewController
        self.navigationController?.pushViewController(LevelPageViewController, animated: true)
    
        
    }
    
    
}

