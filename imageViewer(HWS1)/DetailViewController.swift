//
//  DetailViewController.swift
//  imageViewer(HWS1)
//
//  Created by Keith Heggart on 27/6/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageLabel: UILabel!
    
    var selectedImage: String?
    var selectedImageText: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never

        // Do any additional setup after loading the view.
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        imageLabel.text = selectedImageText
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
