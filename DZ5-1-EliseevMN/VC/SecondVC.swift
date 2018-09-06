//
//  SecondVC.swift
//  DZ5-1-EliseevMN
//
//  Created by Максим on 04.09.2018.
//  Copyright © 2018 MaksimEliseev. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var b = ""
    var a = ""
    var number = 1
    let name = "Purple"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = b + a
        update(parameter: "\(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        textLabel.text! += a
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
        if let existingText = textLabel.text {
            textLabel.text = "\n \(number) \(name) \(parameter), \(existingText)"
            number += 1
        }
        textLabel.numberOfLines = 0
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        if let taskMessageViewController = unwindSegue.source as? ThirdVC {
            a = taskMessageViewController.b
        }
    }
}





