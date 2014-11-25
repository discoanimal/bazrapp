//  LandingViewController.swift
//  bazr - Created by Justin Lynch on 11/24/14.
//  Copyright (c) 2014 jlynch.co. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
//    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//    let mainVC: MainViewController = maininstantiateViewControllerWithIdentifier("MyCustomViewController") as UIViewController
//    let signInVC: SignInViewController = SignInViewController()
//    let signUpVC: SignUpViewController = SignUpViewController()
    
    // Root View Controller Setup
    //self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    //var storyboard = UIStoryboard(name: "Main", bundle: nil)
    //var landingVC = storyboard.instantiateViewControllerWithIdentifier("LandingVC") as LandingViewController
    //var mainVC = storyboard.instantiateViewControllerWithIdentifier("MainVC") as MainViewController
    //var initialVC: UIViewController?
    
    // Bring Current User to main if they already exist
    //if ((PFUser.currentUser()) != nil) {
    //initialVC = mainVC
    //} else {
    //initialVC = landingVC
    //}
    
    //self.window!.rootViewController = initialVC
    //self.window!.makeKeyAndVisible()
    
    var myStoryboard = UIStoryboard(name: "Main", bundle: nil)
    


    override func viewDidLoad() {
        super.viewDidLoad()
        var mainVC: MainViewController = myStoryboard.instantiateViewControllerWithIdentifier("MainVC") as MainViewController
        var signInVC: SignInViewController = myStoryboard.instantiateViewControllerWithIdentifier("SignInVC") as SignInViewController
        var signUpVC: SignUpViewController = myStoryboard.instantiateViewControllerWithIdentifier("SignUpVC") as SignUpViewController
        
        self.view.window?.rootViewController?.presentViewController(signInVC, animated: false, completion: nil)
//
//        self.presentViewController(mainVC, animated: false, completion: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

