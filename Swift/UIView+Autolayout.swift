//
//  UIView+Autolayout.swift
//  MovieSearch
//
//  Created by Duc Hung Trinh on 5/4/18.
//  Copyright © 2018 Hung. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func layoutBelow(otherView: UIView, verticalPadding: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: otherView, attribute: .bottom, multiplier: 1, constant: verticalPadding)
    }
    
    func layoutAfter(otherView: UIView, horizontalPadding: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: otherView, attribute: .right, multiplier: 1, constant: horizontalPadding)
    }
    
    func alignWith(otherView: UIView, edge: NSLayoutAttribute, offsetBy constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: edge, relatedBy: .equal, toItem: otherView, attribute: edge, multiplier: 1, constant: constant)
    }
    
    func constrainDimension(_ dimension: NSLayoutAttribute, relation: NSLayoutRelation, toDimension: NSLayoutAttribute, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: dimension, relatedBy: relation, toItem: self, attribute: dimension, multiplier: 1, constant: constant)
    }
    
    func constrainDimension(_ dimension: NSLayoutAttribute, relation: NSLayoutRelation, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: dimension, relatedBy: relation, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: constant)
    }
    
    func constrainHeight(relation: NSLayoutRelation, toHeight constant: CGFloat) -> NSLayoutConstraint {
        return constrainDimension(.height, relation: relation, constant: constant)
    }
    
    func constrainTop(toView: UIView, relation: NSLayoutRelation = .equal, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .top, relatedBy: relation, toItem: toView, attribute: .top, multiplier: 1.0, constant: constant)
    }
    
    func constrainLeading(toView: UIView, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: toView, attribute: .leading, multiplier: 1.0, constant: constant)
    }
    
    func constrainTrailing(toView: UIView, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: toView, attribute: .trailing, multiplier: 1.0, constant: constant)
    }
    
    func constrainBottom(toView: UIView, relation: NSLayoutRelation = .equal, constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: relation, toItem: toView, attribute: .bottom, multiplier: 1.0, constant: constant)
    }
}

extension UIView {
    
    public func increaseDefaultHorizontalCompressionResistanceAndHuggingPriority(by value: Float = 100) {
        setContentHuggingPriority(UILayoutPriority(rawValue: UILayoutPriority.defaultLow.rawValue + value), for: .horizontal)
        setContentCompressionResistancePriority(UILayoutPriority(rawValue: UILayoutPriority.defaultHigh.rawValue + value), for: .horizontal)
    }
    
    public func increaseDefaultVerticalCompressionResistanceAndHuggingPriority(by value: Float = 100) {
        setContentHuggingPriority(UILayoutPriority(rawValue: UILayoutPriority.defaultLow.rawValue + value), for: .vertical)
        setContentCompressionResistancePriority(UILayoutPriority(rawValue: UILayoutPriority.defaultHigh.rawValue + value), for: .vertical)
    }
}
