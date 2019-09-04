//
//  CViewController.swift
//  LifeCycle
//
//  Created by clobotics_ccp on 2019/9/4.
//  Copyright © 2019 cool-ccp. All rights reserved.
//

import UIKit

class SwiftVC: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print(#file, #function)
    }
    
    convenience init (test: String) {
        self.init()
        print(#file, #function, test)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print(#file, #function)
    }
    
    //从xib加载视图时调用
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#file, #function)
    }
    
    override func loadView() {
        super.loadView()
        print(#file, #function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        print(#file, #function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print(#file, #function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print(#file, #function)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print(#file, #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #function)
    }
    
    deinit {
        print(#file, #function)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let pt = touch.location(in: self.view)
        
        if pt.x > UIScreen.main.bounds.width / 2 {
            self.present(SwiftXibVC.init(nibName: "SwiftXibVC", bundle: nil), animated: true, completion: nil)
        }
        else {
            self.dismiss(animated: true, completion: nil)
        }
    }

}
