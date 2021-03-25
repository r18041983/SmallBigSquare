//
//  ViewController.swift
//  SmallBigSquare
//
//  Created by Rodion Molchanov on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    let squareSize : CGFloat = 30.0
    let squareOrigin = CGPoint(x: 10, y: 10)
    let multiplier : CGFloat = 2.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let square = UIView(frame: CGRect(x: self.squareOrigin.x, y: self.squareOrigin.y, width: self.squareSize, height: self.squareSize))
        
        square.backgroundColor = UIColor.systemGreen
        square.center = self.view.center
        
        self.view.addSubview(square)
        
        UIView.animate(withDuration: 2,
                       delay: 3,
                       options: .curveLinear,
                       animations: { [self] in
                        square.frame.origin = CGPoint(x: square.center.x - (self.squareSize / 2) * self.multiplier, y: square.center.y - (self.squareSize / 2) * self.multiplier)
                        square.frame.size = CGSize(width: self.squareSize * self.multiplier, height: self.squareSize * self.multiplier)
                       },
                       completion: nil)
    }

}

