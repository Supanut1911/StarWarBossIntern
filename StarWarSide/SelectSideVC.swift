//
//  SelectSideVC.swift
//  StarWarSide
//
//  Created by Supanut Laddayam on 29/4/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol SelectSideVCDelegate{
    func didTapChangeSide(image: UIImage, name: String, color: UIColor)
}

class SelectSideVC: UIViewController {
    
    var delegateX: SelectSideVCDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapEmpire(_ sender: UIButton) {
        delegateX.didTapChangeSide(image: #imageLiteral(resourceName: "vaDer"), name: "Vader", color: .black)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapResistance(_ sender: UIButton) {
        delegateX.didTapChangeSide(image: #imageLiteral(resourceName: "luKe") ,name: "Luke Skywalker", color: .gray)
        dismiss(animated: true, completion: nil)
    }
}
