//
//  FotoViewController.swift
//  tut
//
//  Created by Marvel Alvarez on 10/21/16.
//  Copyright (c) 2016 Marvel Alvarez. All rights reserved.
//

import UIKit

class FotosViewController: UIViewController ,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
//Properties
    
       
    @IBOutlet weak var NTField: UITextField!
    
    @IBOutlet weak var imagenes: UIImageView!
    
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //lanza evento cuando editas y terminas de editar el tfield
        NTField.delegate=self
    }

    
// MARK: UITextfieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // esconde el teclado
        NTField.resignFirstResponder()
        return true
    }
    
       
    
    
//Actions

//    @IBAction func BBorrar(sender: UIButton) {
//     
//        NLabel.text="Borrado"
//    
//    }
    
    @IBAction func seleccionarFoto(sender: UITapGestureRecognizer) {
    
        // Hide the keyboard.
        NTField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .PhotoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
    
    }
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        // Dismiss the picker if the user canceled.
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
    
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let imagenseleccionada = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        imagenes.image = imagenseleccionada
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}

