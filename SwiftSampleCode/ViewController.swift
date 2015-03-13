//
//  ViewController.swift
//  SwiftSampleCode
//
//  Created by MACBOOK-MUM on 12/02/15.
//  Copyright (c) 2015 MACBOOK-MUM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
    UITableViewDelegate, UITextFieldDelegate {

    var arrProgrammingLanguages = ["C","C++","Swift","Java","Objective-C","Python","Ruby-on-Rail","JavaScript"];
    
    @IBOutlet var objTableView : UITableView?
    @IBOutlet var txtUserName : UITextField!
    @IBOutlet var btnGo : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // self.fireAlertView()
    }
   
  /*  func fireAlertView() {
        // show an alert when you tap on a mine
        var alertView = UIAlertView()
        alertView.addButtonWithTitle("Ok")
        alertView.title = "AlertView!"
        alertView.message = "AlertView using Swift!"
        alertView.show()
    } */
    
    @IBAction func goClicked(sender: UIButton) {
        // show an alert when you tap on a mine
        var alertView = UIAlertView()
        alertView.addButtonWithTitle("Ok")
        alertView.title = "AlertView!"
        alertView.message = "Welcome to Swift, \(txtUserName.text)"
        alertView.show()
    }
    
     // This method is required by the UITableViewDelegate protocol
    func tableView(tableView: UITableView, numberOfRowsInSection section:Int) -> Int{
        return 8
    }
    
     // This method is required by the UITableViewDelegate protocol
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        
        println("cellForRowAtIndexPath \(arrProgrammingLanguages[indexPath.row])")
        cell.textLabel.text = "Row #\(indexPath.row) :  \(arrProgrammingLanguages[indexPath.row])"
        cell.detailTextLabel?.text = "Subtitle #\(indexPath.row)"
        
        return cell
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        println("textFieldDidBeginEditing")
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        println("textFieldShouldEndEditing")
        
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

