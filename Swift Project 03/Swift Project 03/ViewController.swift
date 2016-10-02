//
//  ViewController.swift
//  Swift Project 03
//
//  Created by Tommy Lau on 02/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bannerView = ADBannerView(frame: CGRect(x: 0, y: self.view.frame.size.height - 50, width: 320, height: 50))
        bannerView.delegate = self

        self.canDisplayBannerAds = true
        self.view.addSubview(bannerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bannerViewDidLoadAd(_ banner: ADBannerView!) {
        print("Banner loaded")
    }

}

