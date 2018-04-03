# HTPopupAlertView
               NSBundle *bundle = [NSBundle bundleForClass:[PopUpViewControllerSwift class]];
                if (IS_IPHONE_6_7) {
                    self.test = [[PopUpViewControllerSwift alloc] initWithNibName:@"PopUpViewController" bundle:bundle];
                }else if (IS_IPHONE_6P_7P){
                    self.test = [[PopUpViewControllerSwift alloc] initWithNibName:@"PopUpViewController6p" bundle:bundle];
                }else{
                    self.test = [[PopUpViewControllerSwift alloc] initWithNibName:@"PopUpViewController" bundle:bundle];
                }
                
                self.test.buttonDelegate = self;
                
                [SVProgressHUD dismissWithDelay:1.5 completion:^{
                    [self.test showInView:self.view withImage:[UIImage imageNamed:@"ht_checkmark"] withMessage:@"xxxxx" animated:YES viewMode: 1 subTitle:@"确认"];
                }];
