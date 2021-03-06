//
//  PickerPresenter.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/10/21.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import Foundation

final class PickerPresentor: PickerPresentation {
    
    weak var view: PickerViewInterface?
    
    var model: PickerInteractor!
    
    func willSaveColor(red: Float, green: Float, blue: Float, alpha: Float) {
        
        let data = ColorData.init(red: red, green: green, blue: blue, alpha: alpha)
        self.model.saveColor(data)
        print("Red:\(red) Green:\(green) Blue:\(blue) Alpha:\(alpha)")
        
        self.view?.presentMessage("カラーの保存に成功")
    }
}


extension PickerPresentor: PickerInteractorOutput {
    
    func succeedSaveColor() {
        self.view?.presentMessage("カラーの保存に成功")
    }
    
    func failedSaveColor() {
        self.view?.presentMessage("カラーの保存に失敗")
    }
}
