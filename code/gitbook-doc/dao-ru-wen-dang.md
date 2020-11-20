# 导入文档

## 新建目录，C:\gitbook

![](/assets/git1.png)

## 打开Git终端

进入目录，右键点击Git Bash Here，打开git终端

![](/assets/git2.png)

## 克隆仓库

终端内输入命令：

`git clone ssh://git@203.195.164.167/home/code/gitbook-doc.git`

**git clone 是复制命令，ssh后是具体项目的仓库地址**

![](/assets/git4.png)

第一次连接服务器，输入yes

输入密码：密码不可见，直接输完后回车

## 完成导入

![](/assets/gitcloned.png)

## 新仓库建立额外操作

* 通知运维新建git库操作略

* 完成导入后为空

![](/assets/gitnull.png)

* 拷贝init.zip到根目录并解压

![](/assets/gitinited.png)

* 终端中依次输入以下命令

```bash
#添加所有文件到版本管理中
git add .
#提交到本地版本库中
git commit -m "初始化XX项目文档"
#推送到git服务器
git push
```

![](/assets/git-init-done.png)

**附件：**

**初始化文件 （右键新窗口打开）   **[**init.zip**](/assets/init.zip)

