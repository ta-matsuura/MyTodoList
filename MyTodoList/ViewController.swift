//
//  ViewController.swift
//  MyTodoList
//
//  Created by Taichi Matsuura on 2017/06/14.
//  Copyright © 2017年 Taichi Matsuura. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    var todolist: [String] = [String]()
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapActionButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "TODO追加", message: "TODOを入力してください", preferredStyle: UIAlertControllerStyle.alert)
        
        //テキストエリア追加
        alertController.addTextField(configurationHandler: nil)
        
        //OKボタン追加
        if let textField = alertController.textFields?.first {
            //先頭に入力値を挿入する
            self.todolist.insert(textField.text!, at: 0)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

