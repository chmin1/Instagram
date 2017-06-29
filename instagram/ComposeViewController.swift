//
//  ComposeViewController.swift
//  instagram
//
//  Created by Chavane Minto on 6/28/17.
//  Copyright © 2017 Chavane Minto. All rights reserved.
//

import UIKit
import Parse

class ComposeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var postImage: UIImageView!
    
    @IBOutlet weak var captionLabel: UITextView!
    
    var postedImage = UIImage(named: "imageName")
    var postCaption = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onScreenTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onImageClick(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.allowsEditing = true
        vc.sourceType = .camera
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onImageSwipe(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.allowsEditing = true
        vc.sourceType = .photoLibrary
        present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func onShareImage(_ sender: Any) {
        postCaption = captionLabel.text ?? ""
        Post.postUserImage(image: postedImage, withCaption: postCaption) { ( status: Bool, error: Error?) in
            self.captionLabel.text = nil
            self.postImage.image = nil
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]) {
        // Get the image captured by the UIImagePickerController
        let originalImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        let editedImage = info[UIImagePickerControllerEditedImage] as! UIImage
        
        postedImage = editedImage
        postImage.image = originalImage
        
        // Dismiss UIImagePickerController to go back to your original view controller
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
