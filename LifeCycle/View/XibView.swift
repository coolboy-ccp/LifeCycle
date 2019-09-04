//
//  XibView.swift
//  LifeCycle
//
//  Created by clobotics_ccp on 2019/9/4.
//  Copyright © 2019 cool-ccp. All rights reserved.
//

import UIKit

class XibView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .purple
        print(#file, #function)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print(#file, #function)
    }
    
    convenience init(test: String) {
        self.init()
        print(#file, #function)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#file, #function)
    }
    
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        print(#file, #function)
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        print(#file, #function)
    }
    
    override func didMoveToWindow() {
        super.didMoveToWindow()
        print(#file, #function)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print(#file, #function)
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        print(#file, #function)
    }
    
    override func didAddSubview(_ subview: UIView) {
        super.didAddSubview(subview)
        print(#file, #function)
    }
    
    override func willRemoveSubview(_ subview: UIView) {
        super.willRemoveSubview(subview)
        print(#file, #function)
    }
    
    override func removeFromSuperview() {
        super.removeFromSuperview()
        print(#file, #function)
    }
    
    deinit {
        print(#file, #function)
    }

}
