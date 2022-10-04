//
//  DetailViewController.swift
//  Milestone-100daysSwift
//
//  Created by Vitalii Navrotskyi on 04.10.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var selectedPicture: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        title = "Picture"
        //        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let imageToLoad = selectedImage {
            selectedPicture.image = UIImage(named: imageToLoad.lowercased())
            selectedPicture.layer.borderWidth = 2
            selectedPicture.layer.borderColor = UIColor.darkGray.cgColor
            
        }
        
        
        
        
        
        
    }
    


}
