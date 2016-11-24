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
        viewSwipable.cardFriction = 0.3
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
        
        
        viewSwipable.interpretDirection = {(topView: UIView, direction: Direction, views: [UIView], swipeableView: ZLSwipeableView) in
            
            let location = CGPoint(x: topView.center.x, y: topView.center.y*0.7)
            var directionVector: CGVector!
            let programmaticSwipeVelocity:CGFloat = 3000
            
            switch direction {
            case Direction.left:
                directionVector = CGVector(dx: -programmaticSwipeVelocity, dy: 0)
            case Direction.right:
                directionVector = CGVector(dx: programmaticSwipeVelocity, dy: 0)
            case Direction.up:
                directionVector = CGVector(dx: 0, dy: -programmaticSwipeVelocity)
            case Direction.down:
                directionVector = CGVector(dx: 0, dy: programmaticSwipeVelocity)
            default:
                directionVector = CGVector(dx: 0, dy: 0)
            }
            
            return (location, directionVector)
        }
        
        viewSwipable.didEnd = {view, location in
            //print("Did end swiping view at location: \(location)")
        }
        viewSwipable.swiping = {view, location, translation in
            print("Swiping at view location: \(location) translation: \(translation)")
            if translation.x > 50 {
                self.viewSwipable.offsetTopViewSnapLocation(by: CGPoint(x: 150, y: 0))
            }else{
                self.viewSwipable.offsetTopViewSnapLocation(by: CGPoint.zero)
            }
        }
        /*
         
        viewSwipable.didStart = {view, location in
            print("Did start swiping view at location: \(location)")
        }
        viewSwipable.swiping = {view, location, translation in
            print("Swiping at view location: \(location) translation: \(translation)")
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

