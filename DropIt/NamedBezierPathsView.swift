//
//  NamedBezierPathsView.swift
//  DropIt
//
//  Created by jeffrey dinh on 7/13/16.
//  Copyright © 2016 jeffrey dinh. All rights reserved.
//

import UIKit

class NamedBezierPathsView: UIView {
    var bezierPaths = [String: UIBezierPath]() { didSet { setNeedsDisplay() } }

    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
}
