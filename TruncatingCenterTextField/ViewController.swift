//
//  ViewController.swift
//  TruncatingCenterTextField
//
//  Created by RAFAT TOUQIR RAFSUN on 20/3/18.
//  Copyright © 2018 RAFAT TOUQIR RAFSUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onViewTouch))
        self.view.addGestureRecognizer(tapGesture)
        
    }
    
    
    @objc func onViewTouch(){
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

