# **GitBook部署及自动更新**

## 安装git

```bash
yum install git
```

## 安装node.js

```
下载页面https://nodejs.org/en/download/中找到下载地址
下载：wget https://nodejs.org/dist/v12.18.2/node-v12.18.2-linux-x64.tar.xz
解压包：
    xz -d node-v12.18.2-linux-x64.tar.xz
    tar -xf  node-v12.18.2-linux-x64.tar.xz
部署bin文件
    ln -s  ~/node-v12.18.2-linux-x64/bin/node /usr/bin/node
    ln -s  ~/node-v12.18.2-linux-x64/bin/npm /usr/bin/npm
    ln -s  ~/node-v12.18.2-linux-x64/bin/npx /usr/bin/npx
    2、3步骤可能提示软连接已存在，先删除执行
```

## 安装gitbook客户端

```
(1)npm install -g gitbook-cli
(2)ln -s  ~/node-v12.18.2-linux-x64/bin/gitbook  /usr/bin/gitbook
```

## Nginx配置项目

```nginx
server {
        listen       80; 
        server_name  test.com;
        root         /usr/share/nginx/html;

        #access_log  /opt/log/access.log;
        #error_log   /opt/log/error.log;

        location / { 
            root     /opt/gitbook页面根目录/html;
            index index.html;
        }   

        error_page 404 /404.html;
            location = /40x.html {
        }   

        error_page 500 502 503 504 /50x.html;
            location = /50x.html {
        }   
    }
```

## 部署自动更新脚本

```shell
#!/bin/bash
#根据git版本号，进行比较自动执行编译脚本

cd /opt/gitbook代码存放跟目录
dir=$(ls -l |awk '/^d/ {print $NF}')
for name in $dir
do    
    cd $name

    old_version=`cat version.file | sort -rV | head -n 1`
    new_version=$old_version

    # 执行git命令
    git pull origin master

    for var in `git rev-parse HEAD`; 
    do 
        new_version=$var
        echo $var > version.file  
    done

    if [ "$new_version"x != "$old_version"x ] ;then        
        gitbook install;
        gitbook build . /opt/gitbook页面根目录/html/$name;
        echo $name " rebuild,git_log version:" $new_version;
    fi
    cd ..
done
```

## 新项目创建流程

1. 通知运维创建项目仓库
2. 运维在文档服务器上clone 新建的仓库到根目录：/opt/gitbook代码存放跟目录
3. 编辑人员自己初始化项目，并上传

**注：**

根据项目仓库名称，自动可以访问，如名称为 lgjapp.git，即初始化完成后，通过地址可以直接访问：[http://help.topfreeweb.net/lgjapp/](http://help.topfreeweb.net/lgjapp/)

