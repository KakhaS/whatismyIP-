//
//  ViewController.swift
//  kakhaIp
//
//  Created by edgar kosyan on 20.05.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentIp: UILabel!
    
    //MARK: ეს იმისთვისაა რო მივწდეთ ჩვენს ფუნქციას
   private var fetchData = FetchData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData.fetchData { ip in
            self.currentIp.text = ip
        }
    }


}

