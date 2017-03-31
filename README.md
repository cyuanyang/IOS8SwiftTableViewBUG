# IOS8SwiftTableViewBUG
swift3.0 tableView 存在一个严重BUG？
swift3.0 在IOS8下，在IOS8下， 在IOS8下 ，重要的事说三遍 ！！！举个栗子，一个section下有20个行 ，这个方法这么写

![Alt text](https://github.com/cyuanyang/IOS8SwiftTableViewBUG/blob/master/picture/1.png)

然后又一个按钮点击事件中刷新第2个和第三个

![Alt text](https://github.com/cyuanyang/IOS8SwiftTableViewBUG/blob/master/picture/2.png)

会出现页面跳动 打印的LOG日志

![Alt text](https://github.com/cyuanyang/IOS8SwiftTableViewBUG/blob/master/picture/3.png)我擦 ！！！！！ 什么情况 ？？？？？ 什么row最大18 ，为什么 有两次row=0？？？？立马换到IOS9 和10 都没有问题。换成OC的版本 也都没有问题。
