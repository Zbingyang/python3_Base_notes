# **python3 整理笔记**

## 入门第一步

### python的安装

#### Windows环境

  可以在[Python的官方网站](https://www.python.org/)下载到Python的Windows安装程序（exe文件），需要注意的是如果在Windows 7环境下安装需要先安装Service Pack 1补丁包（可以通过一些工具软件自动安装系统补丁的功能来安装），安装过程建议勾选“Add Python 3.6 to PATH”（将Python 3.6添加到PATH环境变量）并选择自定义安装，在设置“Optional Features”界面最好将“pip”、“tcl/tk”、“Python test suite”等项全部勾选上。强烈建议使用自定义的安装路径并保证路径中没有中文。安装完成会看到“Setup was successful”的提示，但是在启动Python环境时可能会因为缺失一些动态链接库文件而导致Python解释器无法运行，常见的问题主要是api-ms-win-crt.dll缺失以及更新DirectX之后导致某些动态链接库文件缺失，前者可以参照[《api-ms-win-crt*.dll缺失原因分析和解决方法》](https://blog.csdn.net/jackfrued/article/details/79380979)一文讲解的方法进行处理或者直接在[微软官网](https://www.microsoft.com/zh-cn/download/details.aspx?id=48145)下载Visual C++ Redistributable for Visual Studio 2015文件进行修复，后者可以下载一个DirectX修复工具进行修复。

#### linux环境下的源代码安装

Linux环境自带了Python 2.x版本，但是如果要更新到3.x的版本，可以在[Python的官方网站](https://www.python.org/)下载Python的源代码并通过源代码构建安装的方式进行安装，具体的步骤如下所示。

安装依赖库（因为没有这些依赖库可能在源代码构件安装时因为缺失底层依赖库而失败）。

```
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel1
```

下载Python源代码并解压缩到指定目录。

```
wget https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tar.xz
xz -d Python-3.6.1.tar.xz
tar -xvf Python-3.6.1.tar123
```

切换至Python源代码目录并执行下面的命令进行配置和安装。

```
cd Python-3.6.1
./configure --prefix=/usr/local/python3.6 --enable-optimizations
make && make install123
```

创建软链接，这样就可以直接通过python3直接启动Python解释器。

```
ln -s /usr/local/python3.6/bin/python3 /usr/bin/python3
```

#### MacOS环境下的安装

MacOS也是自带了Python 2.x版本的，可以通过[Python的官方网站](https://www.python.org/)提供的安装文件（pkg文件）安装3.x的版本。默认安装完成后，可以通过在终端执行python命令来启动2.x版本的Python解释器，可以通过执行python3命令来启动3.x版本的Python解释器，当然也可以通过重新设置软链接来修改启动Python解释器的命令。

### 从终端运行Python程序

#### 确认Python的版本

在终端或命令行提示符中键入下面的命令。

```
python --version1
```

当然也可以先输入python进入交互式环境，再执行以下的代码检查Python的版本。

```
import sys

print(sys.version_info)
print(sys.version)1234
```

#### 编写Python源代码

可以用文本编辑工具（推荐使用Sublime、Atom、TextMate、VSCode等高级文本编辑工具）编写Python源代码并将其命名为hello.py保存起来，代码内容如下所示。

```
print('hello, world!')1
```

#### 运行程序

切换到源代码所在的目录并执行下面的命令，看看屏幕上是否输出了”hello, world!”。

```
python hello.py
```
#### 什么是计算机的内存

内存: 我们可以把内存抽象成一个开关, 有两种状态:  打开和关闭.  一种状态对应1,一种状态对应0. 这时我们可以把一个开关的状态称作"一位"  我们可以同时把八个开关放到一个房间里边.  哪么我们可以这个房间看做"一个字节" 每个房间都有自己的门牌编号. 我们将这个门牌编号称作为"地址".  我们把无数个房间堆叠起来就是一栋大厦,  而这栋大厦就是"内存"

#### 单位

```
1bit
8bit == 1B(byte)  一个字节
1024B ==  1KB
1024KB == 1MB
1024MB == 1GB
1024GB == 1TB
内存中以二进制的形式来存储数据
```

#### 进制

```
二进制:   0     1    逢二进一
0 + 0  = 0
1 + 1 = 10
11 + 1 = 100


八进制: 0 1 2 3 4 5 6 7   逢八进一
3 + 4 = 7
1 + 7 = 10


十进制:  0 1 2 3 4  5 6 7 8 9   逢十进一
3 + 8 = 11
2 + 8 = 10
3 + 6 = 9

十六进制:  0 1 2 3 4  5 6 7 8 9  A b c d e f 逢十六进一
1  + f = 1
```

# python的变量，常量，算数运算符，算数表达式

#### 标识符

```
1.什么是标识符?
就是一堆字符串
2.规则:
  	a.只能有数字,字母,下划线组成
    b.不能以数字开始
    c.python的关键字不能做标志符
    `关键字:
      ['False', 'None', 'True', 'and', 'as', 'assert', 'async', 'await', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else', 'except', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 'return', 'try', 'while', 'with', 'yield']
     d. 严格区分大小写
     e. 见名之意
     f. 遵循驼峰原则: UserName  userName   user_name
      
例子:
  ___ y 
  __defx
  abcd1234
  1234abcd   x
  abcd$%^&*&^%$#     x
  False
  
  
 3.作用
	变量,函数来进行命名的
```

## 变量

```
变量: 在程序执行过程中,其值是可以发生改变的量就是变量.
  
作用: 将不同的数据类型存到内存中
  
删除变量:  del   变量名
```

## 常量

```
常量: 程序在运行过程值,其值是不可改变的量就是常量
命名规则: 常量一般使用大写
```

## 算术运算符和算术表达式

#### 算数运算符

```
+ - * / % **(求幂) //(取整)
```

#### 算术表达式

```
1 + 1   2 + 5  3 * 8
写法:  数字 运算符  数字  = 值
```

#### 赋值表达式

```
格式:  变量 = 表达式
```

#### 复合表达式

```
+=     a += b      #a = a + b
-=	   a -= b       #a = a - b
*=		a *= b		#a = a * b
/=      a /= b		#a = a / b
**=		a  **= b	#a = a ** b
//=		a //= b		#a = a // b
```

#### 比较运算符

```
>  < >= <= == !=
```

#### 逻辑运算符(双目运算符)

```
与(and)   或(or)  非(not)
格式:  表达式  and|or  表达式
总结:  整个表达式也有两种结果,True ,False
逻辑与
表达式1	and		表达式2		整个表达式的值
真					真				真
真					假				假
假					真				假
假					假				假
总结: 只要有一个表达式为假,则整个表达式就为假

逻辑或:
表达式1	or 		表达式2		整个表达式的值
真					真				真
真					假				真
假					真				真
假					假				假
总结:只要有一个表达式为真,则整个表达式的结果就为真.

逻辑非
not			表达式				整个表达式的值
			真					假
			假					真
```

#### 成员运算符

```
in :  在指定的序列中查找指定的值,如果有则返回True,否则返回False
not in:在指定的序列中查找指定的值,如果没有返回True,否则返回False
一般使用在列表 元祖 集合  字典中
```

#### 身份运算符[扩展]

```
is:判断两个标识符是不是引用同一个对象
is not: 判断两个标识符不是同一个对象引用
```

#### 运算符的优先级

| 操作符                   | 描述                                          |
| ------------------------ | --------------------------------------------- |
| **                       | 幂运算                                        |
| ~ + -                    | 补，一元加号和减号(方法名的最后两个 +@ 和 -@) |
| * / % //                 | 乘，除，模运算和地板除                        |
| + -                      | 加法和减法                                    |
| >> <<                    | 左，右按位移动                                |
| &                        | 位元“与”                                      |
| ^ \|                     | 按位'异或'和常规 '或'                         |
| <= < > >=                | 比较运算符                                    |
| <> == !=                 | 操作符相等比较                                |
| = %= /= //= -= += *= **= | 赋值运算符                                    |
| is is not                | 标识操作符                                    |
| in not in                | 成员操作符                                    |
| not or and               | 逻辑运算符                                    |



#### 短路原则

```
表达式1  or  表达式2  ......表达式n
总结: 只要第一个确保表达式是为真,则后边的表达式不再进行判断,这样就大大的增加了程序运行的速度
表达式1 and 表达式2 .........表达式n
总结: 只要第一个确保表达式是为假,
```



