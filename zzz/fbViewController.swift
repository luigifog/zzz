//
//  fbViewController.swift
//  zzz
//
//  Created by Luis Martínez Moreno on 13/05/2019.
//  Copyright © 2019 Daniel Pancho. All rights reserved.
//

import UIKit
import WebKit

class fbViewController: UIViewController,WKNavigationDelegate {
    var theUrl:URL? = nil
    @IBOutlet weak var fbWeb: WKWebView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fbWeb.navigationDelegate = self
        theUrl = URL(string: "https://m.facebook.com/EsAsturiasTV")
        let myRequest = URLRequest(url: theUrl!)
        fbWeb.load(myRequest)
    }
    @IBAction func back(_ sender: Any) {
        if (fbWeb.canGoBack){
            fbWeb.goBack()}
    }
    @IBAction func forward(_ sender: Any) {
        if (fbWeb.canGoForward)
        {
            fbWeb.goForward()
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        backButton.isEnabled = fbWeb.canGoBack
        forwardButton.isEnabled = fbWeb.canGoForward
    }
    

    

}
