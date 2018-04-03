//
//  PopUpViewControllerSwift.swift
//  NMPopUpView
//
//  Created by YoungJe Xu on 23/3/18.
//  Copyright (c) YoungJe Xu. All rights reserved.
//

import UIKit
import QuartzCore

@objc protocol ButtonCliked {
    @objc optional func buttonClikCall()
}

@objc public enum HTAlertViewMode: Int {
    case HTAlertTextMode
    case HTAlertImageMode
}

@objc open class PopUpViewControllerSwift : UIViewController {
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var closeButton: UIButton!
    @objc weak var buttonDelegate:ButtonCliked?
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
@objc override public init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.popUpView.layer.cornerRadius = 5
        self.popUpView.layer.shadowOpacity = 0.8
        self.closeButton.layer.cornerRadius = 3.0
        self.closeButton.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        self.popUpView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
    }
    @objc func buttonClicked() {
        print("Button Clicked")
        self.removeAnimate()
        buttonDelegate?.buttonClikCall!()
    }
@objc  open func showInView(_ aView: UIView!, withImage image : UIImage!, withMessage message: String!, animated: Bool,viewMode: HTAlertViewMode,subTitle:String!)
    {

        aView.addSubview(self.view)
        if viewMode == HTAlertViewMode.HTAlertTextMode {
            logoImg!.isHidden = true
            messageLabel!.isHidden = false
            closeButton!.setTitle(subTitle, for: UIControlState.normal)
            
        }else{
            logoImg!.isHidden = false
            messageLabel!.isHidden = true
            closeButton!.setTitle(subTitle, for: UIControlState.normal)
        }
        logoImg!.image = image
        messageLabel!.text = message
        if animated
        {
            self.showAnimate()
        }
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1, y: 1)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.view.alpha = 0.0;
            }, completion:{(finished : Bool)  in
                if (finished)
                {
                    self.view.removeFromSuperview()
                }
        });
    }
    
    @objc  open func closePopView(){
        self.removeAnimate()
    }
    
 @objc @IBAction open func  closePopup(_ sender: AnyObject) {
        self.removeAnimate()
        buttonDelegate?.buttonClikCall!()
    }
}
