//
//  ViewController.swift
//  Webview with processing bar_Phung
//
//  Created by Phung on 10/27/16.
//  Copyright © 2016 Phung. All rights reserved.
//

import UIKit

//yeu cau : viet thanh 1 file class de ke thua su dung lai. , viet protocol de su dung truy cap

class ViewController: UIViewController,UIWebViewDelegate {

    
    @IBOutlet var webView: UIWebView!
    @IBOutlet var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://tuoitre.vn")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        webView.delegate = self
        progressView.isHidden = true
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        progressView.isHidden = false
        self.progressView.setProgress(0.1, animated: false)
    }
    
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        self.progressView.setProgress(1.0, animated: true)
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        
        self.progressView.setProgress(1.0, animated: true)
    }
    
    
    
    

}

