#  UIViewController的生命周期


## common
* -loadView()
   * 在调用super.loadView前，view为空
   * view == nil时,loadView会从xib中查找xml文件并创建view，如果指定了xibName，根据指定name查找，如果没有，根据vc类名查找
   * 没有找到xml文件，创建一个空白的view
   * vc.view = newView
* -viewDidLoad()
   * 当前界面加载完成
* -viewWillAppear(_:)
   * 即将展示当前界面，未开始布局。此时无法确定子类(auto layout)的frame
* -viewWillLayoutSubviews()
* -viewDidLayoutSubviews()
   * 当前界面布局完成，此时子类(auto layout)的frame已经确定
* -viewDidAppear(_:)
   * 当前界面已经完全展示
* -viewWillDisappear(_:) 
   * 跳转到下一个界面，在下一个界面的viewDidLoad后diaoy
   * 返回上一个界面，直接调用
* -viewDidDisappear(_:)
   * 在跳转后界面的viewDidAppear后调用
## swift
* -init(nibName:bundle:) / -init(coder:)
   * 这两个方法时指定初始化方法
   * 从data初始化会走-init(coder:)，其他的走-init(nibName:bundle:)
* init(test:)  (自定义)
***common***
* deinit
   * 当前界面被释放前最后一步调用的函数
   
   ## 关于viewWillLayoutSubviews、 viewDidLayoutSubviews触发时机
   * addSubview, removeFromSuperview
   * 改变self.view及子视图的frame.size会触发layoutSubviews
   * 滚动一个UIScrollView(该scrollview有子视图的时候)会触发layoutSubviews
   * 横竖屏幕切换会触发

## oc
* +load()
   * 第一次加载时调用, app运行过程中只会调用一次(当然，你可以手动调用多次)
* +initialize()
   * 第一次调用当前类的方法时调用, app运行过程中只会调用一次(当然，你可以手动调用多次)
* -init()
   * xib, -init(nibName:bundle:)
   * 代码, -init()
   * 文件, -init(coder:)
***common***
* -dealloc()
   * 当前界面被释放前最后一步调用的函数

## 关于+load和+initialize

