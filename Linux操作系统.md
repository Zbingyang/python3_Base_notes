# Linux操作系统

#### 计算机

```
运算器/控制器（中央处理器CPU）；存储器（RAM）；输入设备；输出设备（IO设备input/output）
软件：

系统软件：操作系统（os）,内核（kernel），提供了人机交互的界面-shell（壳），可能是字符界面，或者图形化界面（GUI）/编译器/解释器/

应用软件:应用程序是指为了完成某项或某几项特定任务而被开发运行于操作系统之上的计算机程序。

```

#### 关于Linux系统的基本操作

```
添加用户：adduser + 用户名

删除用户：userdel + 用户名

更改密码：passwd

切换用户：su + 用户名

退出：exit()

查看当前路径：pwd

重启和关机：reboot/init 6   init 0 /shutdown

查看当前目录下的文件和文件夹：ls -l长格式查看 -a查看所有文件 

参看命令手册：man + 命令

查看命令的帮助和参数的用法：命令  + --help

查看命令的简短帮助：whatis + 命令

适合程序员阅读的帮助信息：info + 命令

连接到其他服务器：ssh + 用户名@公网ip 

退出连接 ： logout

查看系统名字：uname

主机名字：hostname

终止命令：ctrl + c

把任务停下来放到后台：ctrl + z

输入结束：ctrl + d

退格：ctrl + h

把输入的全部删掉：ctrl + w

查看所有后台执行的任务：jobs

把后台第一个任务前置：fg %1

查看历史命令：history

再次执行命令：!+命令的编号

回到用户主目录：cd    cd /root    cd ~

帮助:man / info / whatis / which / whereis

联网下载且命名文件： wget + 统一资源通配符  -O 文件的命名

linux管道，过滤：| + 命令
```

#### Linux关于文件及文件夹的基本操作

```

删除空的文件夹：rmdir + 文件名

删除文件及文件夹：rm + 文件夹名  参数 -r递归删除 -f直接删除 -i在交互模式下删除

复制文件：cp 文件名 + 需要复制的路径

移动文件：mv 文件名 + 需要移动的目的路径  在当前的文件下移动到当前文件夹，改了名字，就是一个重命名的操作。

查看文件信息或者内容：cat + 文件名/路径名  head/tail/more/less

创建目录：mkdir + 文件名      mkdir -p  + 文件名（可以创建父目录和子目录）

删除目录：rmdir  + 目录名

删除：rm + 目录    -r   -f    -i     rm *.html 通配符删除文件

创建空文件：touch + 文件名  	如果文件已经存在，改变文件最后的访问时间

回声：echo + 文本 > 文件名      把回声输出到文件里面，新的内容会覆盖旧的内容

回声：echo + 文本  >> 文件名   输出重定向，在末尾追加,不会覆盖.

查看shell/查看进程状态：ps（默认bash）

查找文件名：find + 目录 + -name + "文件的关键字参数"

查找文件的内容:grep + “要查找的关键词” 目录   -R  -n

```

#### 给文件增加别名

```
 创建符号链接：ln 

	硬链接：ln + 链接的文件（绝对路径） + 链接到的目录，给文件备份，且不浪费空间。

	软链接：建立快捷方式/ ln -s /etc/centos-release    /root/hello  把centos链接到hello，hello就是centos的快捷方

式。
```

#### 文件的压缩、解压缩、归档、解归档

```
tgz文件解压缩：gunzip + 文件名---------->变成.tar归档文件

tar文件压缩：gzip + 文件名

xz文件的解压缩：xz -d

xz文件的压缩：xz -z

解归档：tar -xvf +  文件

归档：tar -cvf 归档之后的文件名 归档的文件1 归档文件2

归档：把多个文件合并到一个文件

解归档：把一个文件拆成多个文件

压缩：把大文件压缩成尺寸更小的文件

解压缩：把一个文件还原成原始的尺寸

```

### 管道和重定向

```
1 管道的使用 -|：grep在文件内容字符串搜索跟你模式匹配的行
cat index.html | grep div
cat index.html | grep <img
cat index.html | grep '<div.*>'
grep '<div.*>' index.html----------------- -n在第几行出现了
grep '<div.*>' .-R -n & -------------------- 从当前文件开始查找；并且在后台运行

例子：查找record.log中包含AAA，但不包含BBB的记录的总数：
[root@iZwz97tbgo9lkabnat2lo8Z ~]# cat record.log | grep AAA | grep -v BBB | wc -l

重定向
grep '<div.*>' / -R -n > result.txt & 后台执行且查找完成放在resul.txt文件里面
grep '<div.*>' / -R -n > result.txt 2> error.txt& 后台执行且查找没有出错的放在result.txt文件里面,出错的内容放在error.txt里面
grep '<div.*>' / -R -n >> result.txt 2> error.txt& 后台执行且查找没有出错的放在result.txt文件里面,出错的内容追加放在error.txt里面

```

## Linux的包管理器

```
1 yum 简称黄狗包管理器
安装：yum install 应用程序
搜索：yum search 应用程序
查看已经安装的应用程序：yum list installed 
卸载应用程序：yum remove 应用程序
2 rpm包管理器
安装：rpm  -vhi rpm文件 忽略安装依赖包：rpm -ivh --force --nodeps
卸载：rpm -e  卸载的包名
查看安装的包：rpm -qa
```



### Linux系统下安装python 3

```
安装C语言编译和构建工具
yum install gcc
2. 从官方网站下载Python源代码
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz
3. 解压缩和解归档
gunzip Python-3.6.5.tgz
(xz -d Python-3.6.5.xz)
tar -xvf Python-3.6.5.tar
4. 进入Python源代码目录，执行配置并生成Makefile（构建文件）
cd  Python-3.6.5
./configure --prefix=/usr/local/python36 --enable-optimizations
5. 安装构建过程可能需要使用的依赖库
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
6. 构建和安装
make && make install
7. 创建软链接（快捷方式）
ln -s /usr/local/python36/bin/python3.6 /usr/bin/python3
ln -s /usr/local/python36/bin/pip3 /usr/bin/pip3
ln -s /usr/local/python36/bin/2to3-3.6 /usr/bin/2to3
8. 检查是否安装成功
python3 --version
9. 更新pip包管理工具
python3 -m pip install -U pip
```

## Linux系统安装rides数据库

```
1、下载
wget http://redis.io/download
2、解压至任一目录
tar xzf redis-2.8.17.tar.gz
3、编译并安装
cd redis-3.2.12
make 
cd src
make install PREFIX=/usr/local/redis
5、如果make编译失败，是因为没有安装gcc服务
yum install gcc
6、将配置文件移动到redis安装目录下
mv redis.conf /usr/local/redis/etc
7、启动服务、配置
/usr/local/redis/bin/redis-server /usr/local/redis/etc/redis.conf
第一个是启动redis服务器
第二个是启动服务器所需的配置
```

## Linux服务器之间的传输服务

```
* sftp传输协议：
连接到服务器：sftp root@47.98.160.24
上传文件：put + 文件名
下载文件：get + 文件名
退出：exit
* scp远程拷贝：
scp + 文件名 root@47.98.160.14:/root/（绝对路径）

```

## Linux网络相关的命令

```
网络状态：netstat -nap 
检查网络可达性：ping + 域名 -c 5 平百度5次 DDoS 分布式拒绝服务；
查看ip地址相关的信息：ifconfig  / ip
```



