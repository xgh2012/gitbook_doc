# 项目本地预览

本地编辑完成后，可以使用nodejs下gitbook在本地运行一个server

1、进入项目根目录，打开git终端

2、本地编译+启动服务

```bash
#本地第一次必须进行运行install命令安装依赖包（如果book.json文件中插件有变动，也必须先运行install）
gitbook install

#开启本地服务
gitbook serve
```

![](/assets/node-server.png)

3、浏览器中输入 [http://localhost:4000](http://localhost:4000) 查看效果

4、理论上是热加载，文档有变动，自动重新编译（大概率无法自动编译，每次预览都需要使用命令 gitbook serve 重启服务）

![](/assets/server-wrong.png)

