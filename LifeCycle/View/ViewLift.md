#  View Life Cycle
## common
* willMove(toSuperview:)
* didMoveToSuperview()
***atfer viewWillAppear***
* willMove(toWindow:)
* didMoveToWindow()
***after viewDidLayoutSubviews***
* layoutSubviews
* deinit
---
## code 创建
* -init
***common***

---
## xib 创建
* -init(coder:)
* -awakeFromNib()
***common***
---
## 特别解释
### willMove(toSuperview:)、didMoveToSuperview()
* 加入super view时调用
* 从super view移除是调用
### willMove(toWindow:)、didMoveToWindow()
* 加入到当前显示视图时调用
* 当前vc退出显示时调用
* 移除时调用
* view.window != nil时，当前view显示在屏幕上

