//
//  ViewController.swift
//  StarWarSide
//
//  Created by Supanut Laddayam on 29/4/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
    }

    @IBAction func tipSelecSide(_ sender: UIButton) {
        let selectionSideVC = storyboard?.instantiateViewController(withIdentifier: "SelectSideVC") as! SelectSideVC
        selectionSideVC.delegateX = self
        present(selectionSideVC, animated: true, completion: nil)
    }
    
}

extension ViewController: SelectSideVCDelegate {
    func didTapChangeSide(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        nameLabel.text = name
        view.backgroundColor = color
    }
    
    
}



