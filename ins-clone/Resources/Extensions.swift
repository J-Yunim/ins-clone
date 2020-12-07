//
//  Extensions.swift
//  ins-clone
//
//  Created by Jinyun Wang on 12/4/20.
//

import UIKit

extension UIView{
    public var width: CGFloat{
        return frame.size.width
    }
    public var height: CGFloat{
        return frame.size.height
    }
    public var top: CGFloat{
        return frame.origin.y
    }
    public var bottom: CGFloat{
        return frame.size.height+frame.origin.y
    }
    public var left: CGFloat{
        return frame.origin.x
    }
    public var right: CGFloat{
        return frame.origin.x+frame.size.width
    }
}
