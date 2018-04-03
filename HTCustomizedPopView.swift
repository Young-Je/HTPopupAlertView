//
//  HTCustomizedPopView.swift
//  AllInOneCard
//
//  Created by Hutong on 2018/4/2.
//  Copyright © 2018 HT. All rights reserved.
//

import UIKit

@objc class HTCustomizedPopView: PopUpViewControllerSwift {
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    @objc public init(nibName nibNameOrNil: String!) {
        let bundle = Bundle(for: HTCustomizedPopView.self)
        super.init(nibName: nibNameOrNil, bundle: bundle)
    }
    
    
    
@objc   @IBAction func closeButton(_ sender: UIButton) {
        
    }
    @objc func showPopUpView(){
//        self.popViewController = PopUpViewControllerSwift(nibName: "PopUpViewController", bundle: bundle)
        self.title = "This is a popup view"
        self.showInView(self.view, withImage: UIImage(named: "ht_checkmark"), withMessage: "An alertView is shown now in the center your screen!", animated: true,viewMode: HTAlertViewMode.HTAlertImageMode,subTitle:"开启成功")
    }
}
