//
//  ViewController2.swift
//  PDFLector
//
//  Created by Sergio on 05/09/18.
//  Copyright © 2018 Sergio. All rights reserved.
//

import UIKit
import WebKit

class ViewController2: UIViewController {

    @IBOutlet var vistaWeb: WKWebView!
    var namePdf : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        showPdf()
    }

    func showPdf(){
        // get direction pdf
        let pathPdf = URL(fileURLWithPath: Bundle.main.path(forResource: namePdf!, ofType: "pdf", inDirectory: "PDF")!)
        // transform file to Data
        let dataPdf = try? Data(contentsOf: pathPdf)
        // show data into web view
        vistaWeb.load(dataPdf!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: pathPdf)
    }
    
}
