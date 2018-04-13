//
//  ViewController.swift
//  SwiftTableviewProj
//
//  Created by Satabdi Das on 13/04/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
   
    

    @IBOutlet weak var displayTableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.displayTableView.register(nib, forCellReuseIdentifier: "swiftCustomCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "swiftCustomCell") as! CustomTableViewCell
        cell.cellLabel.text = "Satabdi"
        return cell
    }


}

