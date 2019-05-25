//
//  ViewController.swift
//  AsyncDemo
//
//  Created by Đàm Thế on 5/24/19.
//  Copyright © 2019 DTVThe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bntGetImage(_ sender: Any) {
        let imgURL:URL = URL(string: "https://images.pexels.com/photos/556416/pexels-photo-556416.jpeg")!
        let queue:DispatchQueue = DispatchQueue(label: "myqueue")
        queue.async {
            do{
                let img2Data:Data! = try Data(contentsOf: imgURL)
                DispatchQueue.main.async {
                    self.imgView.image = UIImage(data: img2Data)
                }
            }
            catch{
                UIAlertController(title: "Oopps!", message: "Can't convert url to image", preferredStyle: UIAlertControllerStyle.alert).show(self, sender: nil)
            }
        }
        
    }

    
}

