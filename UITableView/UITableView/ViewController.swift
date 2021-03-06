//
//  ViewController.swift
//  UITableView
//
//  Created by home on 2018/04/07.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

// テーブルビューに表示するデータ
let sectionTitle = ["チョウ目","バッタ目","コウチュウ目"]
let section0 = [("キタテハ","タテハチョウ科"),("クロアゲハ","アゲハチョウ科")]
let section1 = [("キリギリス","キリギリス科"),("ヒナバッタ","バッタ科"),("マツムシ","マツムシ科")]
let section2 = [("ハンミョウ","ハンミョウ科"),("アオオサムシ","オサムシ科"),("チビクワガタ","クワガタムシ科")]
let tableData = [section0, section1, section2]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.allowsSelection = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tableView: UITableView!
    
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let sectionData = tableData[section]
        return sectionData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        let sectionData = tableData[(indexPath as NSIndexPath).section]
        let cellData = sectionData[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = cellData.0
        cell.detailTextLabel?.text = cellData.1
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let title = sectionTitle[indexPath.section]
//        let sectionData = tableData[indexPath.section]
//        let cellData = sectionData[indexPath.row]
//        print("\(title)\(cellData.1)")
//        print("\(cellData.0)")
//    }
}

