//
//  ViewController.swift
//  webrequest-test
//
//  Created by Mengying Feng on 30/01/2016.
//  Copyright © 2016 Mengying Feng. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView = WKWebView()
        container.addSubview(webView)
        
        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {

        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func loadRequest(urlStr: String) {

        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
    }
    
    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }

    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.tmz.com")
    }
    
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("https://www.google.com.au/search?q=steak&espv=2&biw=1122&bih=908&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjG8LPii9HKAhVEz2MKHVy2C3AQ_AUIBigB#tbm=isch&q=perfectly+cooked+steak")
    }
}

