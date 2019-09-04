#  UIViewController的生命周期


## common
* -awakeFromNib()
   * 从xib创建时调用
* -loadView()
   * 在调用super.loadView前，view为空
   * view == nil时,loadView会从xib中查找xml文件并创建view，如果指定了xibName，根据指定name查找，如果没有，根据vc类名查找
   * 没有找到xml文件，创建一个空白的view
   * vc.view = newView
   * ***如果重写loadView, 初始化时未指定xibName, 系统会直接创建一个空白的view***
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
----
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
----
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
----
## 关于+load和+initialize
### 共同点
* 系统只会调用一次
* 如果子类和父类都被调用，父类调用在子类之前
* 不适合做复杂操作
* 不需要调用super
* super.load会触发super的initialize，并且会手动调用load(系统调用一次，手动调用一次)
   * super load 系统
   * super initialize
   * super load 手动
   * sub load
* super.initialize会手动触发super的initialize
   * super initialize 系统
   * super initialize 手动
   * sub initialize
----
### 不同点
* load方法没有自动释放池，如果做数据处理，需要释放内存，则开发者得自己添加autoreleasepool来管理内存的释放
* 对于load方法，只要文件被引用就会被调用
* load方法调用顺序是父类的load方法优先调用于子类的load方法，而本类的load方法优先于category调用
* 类或者子类中第一次有函数调用时，会调用initialize
* 子类不实现initialize方法，也会把父类的实现继承过来调用一遍。如果实现了，就不会调用父类的（除非super.initialize）

