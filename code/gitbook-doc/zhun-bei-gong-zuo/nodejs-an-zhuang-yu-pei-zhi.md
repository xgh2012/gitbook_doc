# Node.js安装与配置

## Node.js是什么？

简单的说 Node.js 就是运行在服务端的 JavaScript。  
Node.js 是一个基于Chrome JavaScript 运行时建立的一个平台。  
Node.js是一个事件驱动I/O服务端JavaScript环境，基于Google的V8引擎，V8引擎执行Javascript的速度非常快，性能非常好。

## 下载地址

下载地址：[https://nodejs.org/zh-cn/download/](https://nodejs.org/zh-cn/download/)，选择系统合适版本下载

## 安装

1、双击安装文件

![](/assets/nodejs_setup.png)

2、next-&gt;next-&gt;finish 安装完成

3、检查配置，出现下图所示，表示安装成功

* node -v 
* npm -v

![](/assets/node_env_check.png)

4、如果提示 **command not found **，可能是环境变量不包含node.js的文件夹

在环境变量PATH中添加目录：刚才安装node.js的目录（windows环境变量配置 [参考地址](https://blog.csdn.net/weixin_37204973/article/details/82504570)，mac环境变量配置 [参考地址](https://www.cnblogs.com/liujianing/p/12156976.html)）

