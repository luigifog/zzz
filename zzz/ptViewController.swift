//
//  ptViewController.swift
//  zzz
//
//  Created by Luis Martínez Moreno on 09/05/2019.
//  Copyright © 2019 Daniel Pancho. All rights reserved.
//

import UIKit
import WebKit

class ptViewController: UIViewController,WKNavigationDelegate {
    var theUrl:URL? = nil
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var pintWeb: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pintWeb.navigationDelegate = self
        theUrl = URL(string: "https://www.pinterest.com/esasturiastv/")
        let myRequest = URLRequest(url: theUrl!)
        pintWeb.load(myRequest)
        print(pintWeb.canGoBack)
    }
    @IBAction func back(_ sender: Any) {
        if (pintWeb.canGoBack) {
            pintWeb.goBack()
        }
    }
    @IBAction func forward(_ sender: Any) {
        if (pintWeb.canGoForward) {
            pintWeb.goForward()
        }
    }
    func webView(_ pintWeb: WKWebView, didFinish navigation: WKNavigation!) {
        backButton.isEnabled = pintWeb.canGoBack
        forwardButton.isEnabled = pintWeb.canGoForward
    }
}
