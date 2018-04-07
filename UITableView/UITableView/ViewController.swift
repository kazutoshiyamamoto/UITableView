//
//  ViewController.swift
//  UITableView
//
//  Created by home on 2018/04/07.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// テーブルビューに表示するデータ
    let sectionTitle = ["チョウ目","バッタ目","コウチュウ目"]
    let section0 = [("キタテハ","タテハチョウ科"),("クロアゲハ","アゲハチョウ科")]
    let section1 = [("キリギリス","キリギリス科"),("ヒナバッタ","バッタ科"),("マツムシ","マツムシ科")]
    let section2 = [("ハンミョウ","ハンミョウ科"),("アオオサムシ","オサムシ科"),("チビクワガタ","クワガタムシ科")]
    let tableData = [section0, section1, section2]
}

