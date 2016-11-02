//
//  ViewController.swift
//  ZLExample
//
//  Created by Tanel Teemusk on 02/11/2016.
//  Copyright © 2016 Tanel Teemusk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewSwipable: ZLSwipeableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewSwipable.onlySwipeTopCard = true
        viewSwipable.damping = 0.35
        viewSwipable.allowedDirection = .none
        viewSwipable.numberOfActiveView = 3
        viewSwipable.nextView = {
            let view = UIView(frame:CGRect(x: 0, y: 0, width: 300, height: 500))
            view.layer.cornerRadius = 5
            view.backgroundColor = self.getRandomColor()
            print("view")
            return view
        }
        viewSwipable.loadViews()
        /*
        viewSwipable.didStart = {view, location in
            print("Did start swiping view at location: \(location)")
        }
        viewSwipable.swiping = {view, location, translation in
            print("Swiping at view location: \(location) translation: \(translation)")
        }
        viewSwipable.didEnd = {view, location in
            print("Did end swiping view at location: \(location)")
        }
        viewSwipable.didSwipe = {view, direction, vector in
            print("Did swipe view in direction: \(direction), vector: \(vector)")
        }
        viewSwipable.didCancel = {view in
            print("Did cancel swiping view")
        }
 */
    }
    
    func getRandomColor() -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }


}

