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
        print(Config.APP_HOST)
        print(Config.ENABLE_LOGGING)
        print(Config.SDK_APPID)
        
        print(type(of: Config.APP_HOST))
        print(type(of: Config.ENABLE_LOGGING))
        print(type(of: Config.SDK_APPID))
        
    }


}

