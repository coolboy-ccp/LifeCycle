//
//  ViewController.swift
//  LifeCycle
//
//  Created by clobotics_ccp on 2019/9/3.
//  Copyright © 2019 cool-ccp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    /*
     * +initialize swift中没有，可以用
       /* private static let initialize: () = {
               print("initialize")
          }()
     
        init() {
          TestObject.initialize
        }*/
       代替，但调用顺序与oc不同
     */
    
    //-init
    //-init(nibName:bundle:)
    //-init(coder:)
   //...
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        print(#file, #function)
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
        self.present(SwiftVC(test: "test"), animated: true, completion: nil)
    }

}

