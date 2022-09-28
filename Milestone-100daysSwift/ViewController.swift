//
//  ViewController.swift
//  Milestone-100daysSwift
//
//  Created by Vitalii Navrotskyi on 20.09.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures: [String] = ["FRANCE", "GERMANY", "US", "POLAND", "SPAIN", "NIGERIA", "ITALY", "UK", "MONACCO",  "IRELAND", "ESTONIA"]
    var picArr: [UIImage] = [#imageLiteral(resourceName: "france"), #imageLiteral(resourceName: "germany"), #imageLiteral(resourceName: "us"), #imageLiteral(resourceName: "monaco"), #imageLiteral(resourceName: "spain"), #imageLiteral(resourceName: "nigeria"), #imageLiteral(resourceName: "italy"), #imageLiteral(resourceName: "uk"), #imageLiteral(resourceName: "poland"), #imageLiteral(resourceName: "ireland"), #imageLiteral(resourceName: "estonia")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Flags Info"
        
//        let fm = FileManager.default
//        let path = Bundle.main.resourcePath!
//        let items = try! fm.contentsOfDirectory(atPath: path)
//        for item in items {
//            if item.hasPrefix("nssl") {
//                pictures.append(item)
//            }
//
//        }
//
//        print(pictures)
        
        print(pictures)
                
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.rowHeight = 150
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        cell.imageView?.image = picArr[indexPath.row]
        return cell

//        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
//        }
    }

   
}

