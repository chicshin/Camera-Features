//
//  PreviewViewController.swift
//  CameraApp
//
//  Created by Jane Shin on 7/29/19.
//  Copyright © 2019 Jane Shin. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    @IBOutlet weak var cancel: UIButton!
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var photo: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photo.image = self.image
        
        cancel.setTitleColor(.white, for: UIControl.State.normal)
        save.setTitleColor(.white, for: UIControl.State.normal)
    }
    @IBAction func cancelButton_touchUpInside(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func saveButton_touchUpInside(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
        dismiss(animated: true, completion: nil)
    }
    
}
