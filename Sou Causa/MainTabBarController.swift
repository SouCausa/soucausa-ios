//
//  MainTabBarController.swift
//  Sou Causa
//
//  Created by Felipe Saruhashi on 2/2/15.
//  Copyright (c) 2015 Felipe Saruhashi. All rights reserved.
//

import Foundation

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidAppear(animated: Bool) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "swipedView:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "swipedView:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func swipedView(gesture: UIGestureRecognizer){
        
        let tabCount = self.viewControllers?.count as Int!
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                
                if self.selectedIndex < (tabCount - 1) {
                    self.selectedIndex = 1
                }

            case UISwipeGestureRecognizerDirection.Left:
                if self.selectedIndex > 0 {
                    self.selectedIndex = 0
                }
            default:
                break
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
