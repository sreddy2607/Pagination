//
//  ViewController.swift
//  Pagination
//
//  Created by Santhosh Ramidi on 1/22/19.
//  Copyright © 2019 Santhosh Ramidi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var myView = UIView()
    let myButton = UIButton()
    
    var mainArray: [[String]]?
    
    var myArray = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    var myArray1 = ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
        let customView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        let button = UIButton(frame: CGRect(x: 20, y: 0, width: 100, height: 50))
        button.setTitle("Load more", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        customView.addSubview(button)
        myTableView.tableFooterView = customView

    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func buttonAction(_ sender: UIButton!) {
        
        myArray.append(contentsOf: myArray1)
        myTableView.reloadData()

    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.myLabel.text = myArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("do nothing")
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Deleted")
            
            self.myArray.remove(at: indexPath.row)
            self.myTableView.deleteRows(at: [indexPath], with: .automatic)
            self.myTableView.reloadData()
        }
    }
    
    
    
    
    
    
}

