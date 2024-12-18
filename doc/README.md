# 量潮IdAM云Flutter客户端SDK

主要包括登录注册、用户认证、个人中心等。

## 模块设计

### 登录注册页面

在手动点击或者触发需要登录的页面时打开。

包含的登录方式：

- 账号（手机/邮箱）密码登录：提供两个框输入数据；
- 验证码登录：提供两个框；
- 手机/邮箱验证码注册：提供三个框；
- 第三方登录：提供按钮，注意**增加按钮面积**以适应小屏。

### 个人中心页面

展示用户信息等。

![](doc/prototypes/user_profile.jpg)

### 用户认证

Mixin类/装饰器函数，装饰需要用户身份的接口，如果用户未登录则跳转到登录页面。

**不确定怎么使用，需要实际场景。**目前初步想到的使用场景大概有：

- 有一些Route访问需要用户权限；
- 有一些入口点击的时候需要验证，通常是实例方法。

由于后端也有用户认证机制，所以前端主要是方便以下情况：

- 用户没有登录，直接跳转到登录状态，不向后端接口发送消息；
- 在断网状态下，通过缓存的用户登录状态和其他必要信息判断是否有权限访问，比如把签名的加密部分作为key验证缓存数据。
