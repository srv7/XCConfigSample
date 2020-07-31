//
//  ViewController.swift
//  XCConfigSample
//
//  Created by 刘波 on 2020/7/31.
//  Copyright © 2020 struggleblog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(Config.appHost)
        print(Config.enableLogging)
        print(Config.sdkAppID)
        
        print(type(of: Config.appHost))
        print(type(of: Config.enableLogging))
        print(type(of: Config.sdkAppID))
        
    }


}

