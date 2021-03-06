//
//  ThirdVC.swift
//  DZ5-1-EliseevMN
//
//  Created by Максим on 04.09.2018.
//  Copyright © 2018 MaksimEliseev. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    let name = "Blue"
    var number = 1
    var b = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(parameter: "\(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        update(parameter: "\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        update(parameter: "\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        update(parameter: "\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        update(parameter: "\(#function)")
    }

    func update(parameter: String) {
        b = "\n \(number) \(name) \(parameter) \(b)"
        number += 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LastView" {
            let dvc = segue.destination as! SecondVC
            dvc.b = b
        }
    }
}

