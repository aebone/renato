//
//  ViewController.swift
//  renato
//
//  Created by Aline Ebone on 20/02/20.
//  Copyright © 2020 Aline Ebone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wisdom: UITextView!
    var sentences: [String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wisdom.text = ""
        
        let url = Bundle.main.url(forResource: "minutesOfWisdom", withExtension: "json")!

        do {
            let jsonSentences = try Data(contentsOf: url)
            sentences = try JSONSerialization.jsonObject(with: jsonSentences) as! [String]
        }
        catch {
            print(error)
        }
    }

    @IBAction func generateWisdom(_ sender: Any) {
        wisdom.text = sentences.randomElement();
    }
    
}

