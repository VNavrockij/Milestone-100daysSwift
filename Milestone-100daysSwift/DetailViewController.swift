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
        
        // to hide info at first VC
        navigationItem.largeTitleDisplayMode = .never
 
        title = selectedImage
        // add button share
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let imageToLoad = selectedImage {
            selectedPicture.image = UIImage(named: imageToLoad.lowercased())
            selectedPicture.layer.borderWidth = 2                               // doesn't work
            selectedPicture.layer.borderColor = UIColor.darkGray.cgColor        // doesn't work
        }
 
    }
    
    /* for hide the navigation Controller
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = false
    }
     */
    
    // for share item
    @objc func shareTapped() {
        guard let image = selectedPicture.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    


}
