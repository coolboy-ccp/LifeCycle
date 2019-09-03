#  App life cycle
## App 状态
* not running: app未启动或终止
* inactive: app正在前台运行，但并不接收事件。当app进行状态切换时，中途过渡的短暂停留状态。当用户锁屏，或系统提示用户去响应某些（电话，短信）事件时，会停留较长事件。
* active：app在前台运行，并接收事件
* background：app进入后台运行，会在这个状态上停留一会后进入suspended状态。可以请求长期处于background状态
* suspended：程序在后台运行不执行代码。app在内存中，low memory时，app会被清除
 ![状态切换](https://github.com/coolboy-ccp/LifeCycle/blob/master/LifeCycle/App/051500183431183.png)
## UIApplicationDelegate调用顺序 

