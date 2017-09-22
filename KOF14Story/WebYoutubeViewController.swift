//
//  WebYoutubeViewController.swift
//  KOF14Story
//
//  Created by mikewang on 2017/9/22.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit
import WebKit

class WebYoutubeViewController: UIViewController {

    @IBOutlet weak var myActivity: UIActivityIndicatorView!
    // 顯示讀取圖示
//    func showActivityIndicator() {
//        let myActivity = UIActivityIndicatorView()
//        myActivity.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0)
//        myActivity.center = view.center
//        myActivity.hidesWhenStopped = true
//        myActivity.activityIndicatorViewStyle = .whiteLarge
//        myWKWebView.addSubview(myActivity)
//        myActivity.startAnimating()
//        
//    }
    
    @IBOutlet weak var myWKWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://youtu.be/ik3p7UOgmxs") {
            let request = URLRequest(url: url)
            self.myWKWebView.load(request)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
