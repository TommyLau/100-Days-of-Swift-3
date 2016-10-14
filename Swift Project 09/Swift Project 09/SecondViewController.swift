//
//  SecondViewController.swift
//  Swift Project 09
//
//  Created by Tommy Lau on 14/10/2016.
//  Copyright © 2016 Tommy Lau. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var stringPassed = ""
    
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(pickImage))
        print(stringPassed)
        textView.text = stringPassed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickImage() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!

        present(imagePicker, animated: true, completion: nil)
    }
    
    // MARK: - Delegates
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // Get the image from Photo Library
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage

        // Get original text
        let attributedString = NSMutableAttributedString()
        if let originalText = textView.attributedText {
            attributedString.append(originalText)            
        }
        
        // Append image to the end of the text
        let textAttachment = NSTextAttachment()
        let oldWidth = chosenImage.size.width
        let scaleFactor = oldWidth / textView.frame.size.width
        textAttachment.image = UIImage(cgImage: chosenImage.cgImage!, scale: scaleFactor, orientation: .up)
        let attributedStringWithImage = NSAttributedString(attachment: textAttachment)
        attributedString.append(attributedStringWithImage)

        // Update text view
        self.textView.attributedText = attributedString

        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
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
