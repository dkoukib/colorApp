//
//  PickerViewController.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/10/21.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit

final class PickerViewController: UIViewController {
    
    @IBOutlet private weak var colorView: UIView!

    @IBOutlet private weak var redSlider: UISlider!

    @IBOutlet private weak var blueSlider: UISlider!
    
    @IBOutlet private weak var greenSlider: UISlider!
    
    @IBOutlet private weak var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func didChangeSlider(_ sender: Any) {
        self.changeColorView()
    }
    
    @IBAction private func didTapSaveButton(_ sender: Any) {
        
        
    }
    
    private func changeColorView() {
        let color = UIColor(red: CGFloat(self.redSlider.value/255),
                            green: CGFloat(self.greenSlider.value/255),
                            blue: CGFloat(self.blueSlider.value/255),
                            alpha: CGFloat(self.alphaSlider.value/100))
        self.colorView.backgroundColor = color
    }
}
