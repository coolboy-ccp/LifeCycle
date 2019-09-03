# CCPAppInfo
获取info.plist中的信息
# 关于identifierForVendor
## 从AppStore上下载
* 同一厂商（即同一个开发者帐号）在一个iOS设备上的APP的IDFV相同；
* 同一厂商在不同iOS设备上的APP的IDFV不同；
* 不同厂商在同一iOS设备上的APP的IDFV不同；
* 用户从iOS设备上删除了一个厂商的所有APP并重新安装了其中一个或多个APP时，IDFV会变化。
## 非AppStore下载
* 如果APP不是从AppStore下载的，而是在开发阶段或者企业版APP，那么IDFV与APP bundle ID有关，也就是即使是同一厂商的来自AppStore的APP和开发阶段的APP在同一设备的IDFV也不一样。
## 并非一定会获得到
* 在设备重启之后而用户未解锁之前会返回nil。
## ”卸载应用“操作不会使IDFV发生变化
* 新版的iOS系统支持”卸载应用“和”删除应用“两种操作，”卸载应用“允许用户保留文档和数据。”卸载应用“后重装APP，IDFV不会发生变化。
