//
//  ViewController.swift
//  transitions
//
//  Created by Daniel Alpizar on 4/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SegueTapped(_ sender: Any) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let greenViewController = mainStoryBoard.instantiateViewController(
        withIdentifier: "GreenViewController") as?
        GreenViewController else{
        print("Couldn’t find the view controller")
        return
        }
        //navigationController?.pushViewController(greenViewController, animated: true)
        
        greenViewController.modalTransitionStyle = .coverVertical
        present(greenViewController, animated: true, completion: nil)
    }
}

