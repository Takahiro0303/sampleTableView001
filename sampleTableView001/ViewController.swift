//
//  ViewController.swift
//  sampleTableView001
//
//  Created by takahiro tshuchida on 2017/09/06.
//  Copyright © 2017年 Takahiro Tshuchida. All rights reserved.
//

import UIKit


//１.プロトコルの設定(Datesource,Delegate)

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var myTableView: UITableView!
    
    var proArray = ["C言語","Swift","PHP","Javascript","Ruby","Java","Python"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//４.TableViewに指示を出すのがViewContorollerだと設定する
//        Delegate,Datasource
//        myTableView.dataSource = Selfではなく
//        

//５.tableViewにCellオブジェクトを追加しidentifiierに[Cell]という名前を付ける

    }
    
//２.行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

//３.リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字を表示するセルの取得（セルの再利用）
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示したい文字の設定 indexPath.rowが行番号を表す
        cell.textLabel?.text = proArray[indexPath.row]
        
        //文字を設定したセルを返す
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

