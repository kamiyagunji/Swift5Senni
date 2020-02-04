//
//  ViewController.swift
//  Swift5Senni
//
//  Created by lancers512-01 on 2020/01/12.
//  Copyright © 2020 Gunji Kamiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        
        label.text = String(count)
        
        if count == 10 {
            // 画面遷移をする
//            performSegue(withIdentifier: "next", sender: nil)
            
            let nextVC = storyboard?.instantiateViewController(withIdentifier: "next") as! NextViewController
            nextVC.count2 = count
            
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        
        nextVC.count2 = count
    }
    
}

