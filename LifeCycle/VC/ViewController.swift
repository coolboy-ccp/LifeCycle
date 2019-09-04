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
    
    //千万别直接调用
    override func loadView() {
        super.loadView()
        print(#file, #function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #function)
        testButtons()
       // setupCodeView()
        setupXibView()
    }
    
    private func setupCodeView() {
        let v = CodeView(frame: CGRect(x: 200, y: 300, width: 60, height: 60))
        self.view.addSubview(v)
    }
    
    private func setupXibView() {
        if let v = Bundle.main.loadNibNamed("XibView", owner: nil, options: nil)?.first as? XibView {
            v.frame = CGRect(x: 300, y: 300, width: 60, height: 60)
            self.view.addSubview(v)
        }
    }
    
    
    private func testButtons() {
        _ = self.view.subviews.map { $0.removeFromSuperview() }
        for i in 0 ... 7 {
            let btn = UIButton.init(frame: CGRect(x: 0, y: 80 +  50 * i, width: 100, height: 40))
            btn.backgroundColor = .green
            btn.setTitle("\(i)", for: UIControl.State())
            btn.tag = 1001 + i
            self.view.addSubview(btn)
            btn.addTarget(self, action: #selector(testActions(_:)), for: .touchUpInside)
        }
        
        let btn = UIButton.init(frame: CGRect(x: 300, y: 80, width: 100, height: 40))
        btn.backgroundColor = .green
        btn.setTitle("reset", for: UIControl.State())
        btn.tag = 1001 + 100
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(testActions(_:)), for: .touchUpInside)
        
        
    }
    
    @objc private func testActions(_ sender: UIButton) {
        switch sender.tag - 1001 {
        case 0:
             sender.frame = sender.frame.offsetBy(dx: 100, dy: 0)
        case 1:
            // 调用viewWillLayoutSubviews、 viewDidLayoutSubviews
            sender.frame = CGRect(x: 0, y: 130, width: 150, height: 40)
        case 2:
            sender.isHidden = sender.isSelected
        case 3:
            // 调用viewWillLayoutSubviews、 viewDidLayoutSubviews
            sender.removeFromSuperview()
        case 4:
            sender.backgroundColor = .red
        case 5:
            sender.setTitle("change5", for: UIControl.State())
        case 6:
            sender.frame = sender.frame
            self.view.layoutSubviews()
        case 7:
            sender.frame = sender.frame
            self.view.layoutIfNeeded()
        case 100:
            testButtons()
        default:
            break
        }
       
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

