//
//  ViewController.swift
//  BoracayTV
//
//  Created by euisuk_lee on 2018. 3. 21..
//  Copyright © 2018년 euisuk_lee. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    var webView : WKWebView!
    
    let basicUrl = URLRequest(url: URL(string: "https://boracaytv.in/")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.shared.statusBarView?.backgroundColor = UIColor(red: 0, green: 0.588, blue: 0.529, alpha: 1)
        
        //init webbiew
        webView = WKWebView(frame: self.view.frame)
        webView.scrollView.showsVerticalScrollIndicator = false
        webView.allowsBackForwardNavigationGestures = true
        webView.load(basicUrl)
        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

