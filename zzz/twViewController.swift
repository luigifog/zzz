//
//  twViewController.swift
//  zzz
//
//  Created by Luis Martínez Moreno on 13/05/2019.
//  Copyright © 2019 Daniel Pancho. All rights reserved.
//

import UIKit
import WebKit

class twViewController: UIViewController,WKNavigationDelegate {
    var theUrl:URL? = nil
    @IBOutlet weak var twWeb: WKWebView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        twWeb.navigationDelegate = self
        theUrl = URL(string: "https://twitter.com/EsAsturiasTV")
        let myRequest = URLRequest(url: theUrl!)
        twWeb.load(myRequest)
    }
    @IBAction func back(_ sender: Any) {
        if (twWeb.canGoBack){
            twWeb.goBack()
        }
    }
    @IBAction func forward(_ sender: Any) {
        if (twWeb.canGoForward){
            twWeb.goForward
        }
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        backButton.isEnabled = twWeb.canGoBack
        forwardButton.isEnabled = twWeb.canGoForward
    }

}
