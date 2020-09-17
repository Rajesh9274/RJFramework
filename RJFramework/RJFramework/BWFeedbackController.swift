//
//  BWFeedbackController.swift
//  BWReportProblem
//
//  Created by raj on 16/09/20.
//  Copyright © 2020 Bluewhale. All rights reserved.
//

import UIKit
import Photos
import MessageUI

public class BWFeedbackController: UIViewController {
    
    // MARK: Variables
    
    private var imagePicker = UIImagePickerController()
    @IBOutlet var txtReport: UITextView!
    @IBOutlet var imgReport: UIImageView!
    @IBOutlet var btnAdd: UIButton!
    @IBOutlet var btnEdit: UIButton!
    var project_id = String()
    // MARK: Setup
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
     }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    private func setup() {
        title = "Contact Us"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Send", style: .plain, target: self, action: #selector(send))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleDismiss))
       
    }

    @objc private func handleDismiss() {
        self.dismiss(animated: true) {
            
        }
    }
       
    @objc private func send() {
      
    }
    
    @IBAction func btnAddimageAction(_ sender: Any) {
        self.openPhotos()
    }
    
    @IBAction func btnEditimageAction(_ sender: Any) {
        
        
    }
}



extension BWFeedbackController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    private func openPhotos() {
         if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
      
        guard let image = info[UIImagePickerController.InfoKey.originalImage.rawValue] as? UIImage else {
                return
            }
        self.imgReport.image = image

        self.dismiss(animated: true) {
         }
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true) {
                   
        }
    }
}
