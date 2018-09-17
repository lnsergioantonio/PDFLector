//
//  ViewController.swift
//  PDFLector
//
//  Created by Sergio on 04/09/18.
//  Copyright © 2018 Sergio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let pdfList = ["pdf1","pdf2","pdf3"]
    
    @IBOutlet var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clic en \(indexPath.row)")
        let idPdfSelected = indexPath.row
        self.performSegue(withIdentifier: "seguePdf", sender: idPdfSelected)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pdfList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = pdfList[indexPath.item]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seguePdf"{
            let idPdfSelected = sender as! Int
            
            let viewController : ViewController2 = segue.destination as! ViewController2
            
            viewController.namePdf = pdfList[idPdfSelected]
            
        }
    }
}

