//
//  ViewController.swift
//  HTML View
//
//  Created by Samuel Zaldivar on 4/9/18.
//  Copyright © 2018 Samuel Zaldivar. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

 
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do{
            guard let filePath = Bundle.main.path(forResource: "test", ofType: "html")
                else{
                    //File Error
                    print("File error")
                    return
            }
            
            let contents = try String(contentsOfFile: filePath, encoding: .utf8)
            let baseURL = URL(fileURLWithPath: filePath)
            webView.loadHTMLString(contents as String, baseURL: baseURL)
        }
        catch{
            print("Error")
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

