# python的数据类型

|    类型    |  含义  |    实列    |
| :--------: | :----: | :--------: |
|    int     |  整型  |     1      |
|    bool    | 布尔值 | True或Fals |
|   string   | 字符串 |  ‘abc123’  |
|    list    |  列表  |  [a,b,c]   |
|   tuple    |  元组  |  (a,b,c)   |
|    set     |  集合  |  {a,b,c}   |
| dictionary |  字典  | {a:b,c:d}  |

# int()

```
数字型：浮点数float，复数complex
int(): int()是一个python自带函数，它可以将一个字符串，或者数字转换成整数的函数,不进行四舍五入
int（'12345')
>>>12345
int(3.14)
>>>3
float(): 将整数或者字符串转换成浮点数
>>>float(1)
1.0
>>> float(112)
112.0
>>> float(-123.6)
-123.6
>>> float('123')     # 字符串
```

#### 相关的数字型函数

#### abs()

```
abs（x）：求x的绝对值函数
print （abs(-45)）
>>>45
print （abs(100.12)） 
>>>100.12
print （abs(119L)）
>>>119
```

#### max():

```
max（x,y,z）:返回参数的最大值，参数为序列
print(max(80, 100, 1000))
>>>1000
print(max(-20, 100, 400)) 
>>>400
print(max(-80, -20, -10))
>>>-10
print(max(0, 100, -400)) 
>>>100
```

#### min():

```
min(x,y,z):返回给定参数的最小值，参数为序列
print（min(80, 100, 1000)）
>>>80
print（min(-20, 100, 400)）
>>>-20
print（min(-80, -20, -10)）
>>>-80
print（min(0, 100, -400)）
>>>0
```

#### pow():

```
pow(x,y):返回 x 的 y次方
print(pow(2,3))
>>>8
```

#### round():

```
round(x,n):返回浮点数保留小数点后n位x的四舍五入；
print(round(100.123,2))
>>>100.12
```



# bool类型

```
bool布尔值有两个：True,False；分别表示真和假，是一对对立的条件
```

# str

```
str:字符串
字符串一般情况使用单引号或者双引号引起来
规则: 单不能套单,单可以套双
      双不能套双,双可以套单
```

#### 多行字符串的写法

```
#3种字符串的换行方式
#第一种：三个单引号

    print '''我是一个程序员
       我刚开始学习python'''   #  3个单引号

#第二种：三个双引号
    print """我是一个程序员
       我刚开始学习python"""   #3个双引号

#第三种：\结尾
   print"我是一个程序员，\
       我刚开始学python"       #用   \  来进行换行
```

#### 字符串的长度

```
'''
len(): 获取字符串的长度
'''
str1 = 'lhy'
str1 = '刘海艳'
str1 = '幸福像花儿一样'
print(len(str1))

总结: 无论是字符还是汉字,只要有一个,则长度就是几个
```

#### 提取某个字符

```
'''
提取字符串中的某一个字符
方式:
从左往右开始, 下标从0开始提取
str[0]   str[1]   str[2] ..... str[n]

从优往左开始, 下标从-1开始
str[-1]  str[-2] .....  str[-n]

'''
str1 = 'It is a dog'
print(str1[0])
print(str1[-2])

# pytjon中的字符串一旦定义好之后,是不可以修改的
str1[0] = 'i'
print('str1 =', str1)
```

#### 转义字符

```
'''
转义字符: 将原来的意义给他去掉  \(这是反斜线)  
常用的转义字符：
\n 表示换行 
\t 表示一个制表符 
\ 表示 \ 字符本身
'''
str1 = '我最喜欢的一首歌是\'咱们结婚吧\''
str1 = 'you\'re a good man'
print(str1)

'''
系统里边有一些特殊的字符: \t(制表符) \n(换行符)
'''
print('你好\\t宝强哥,你的媳妇是马蓉吗?')
print('你好\\n宋喆,你的情人是\t马蓉\n吗?')
# 如果想将原来具有特殊含义的字符失去本身的意义,我们可以直接在整个字符串前边添加一个r
print(r'你好\t宝强哥,你的媳妇是马蓉吗?')
print(r'你好\n宋喆,你的情人是马蓉吗?')

```

#### 字符串的连接

```
# *将字符串拼接n次
str1 = 'lhy'
str1 = '刘海艳'
print(str1 * 3)

# +表示字符串与字符串变量之间的拼接
str2 = 'xiaoming'
str3 = 'xiaoliang'
print(str2 + str3)

str4 = 'goudan'
print('你好' + str4)

# 下边直接报错
num2 = 234
print('hello' + num2)
```

#### 字符串的截取

```
'''
字符串截取:
str1[开始下标:结束下标]: 从开始下标截取,到结束下标=结尾,.包含开始下标,但不包含结束下标
str1[0:5] 提取是的结果你是zhous
str1[:3] 默认从下标0开始到结束的开区间
str1[3:] 从指定的下标开始到结尾
str1[-n:]: 从最后边提取n个
str1[:]:  提取全部字符
str1[::2]  根据下标每个n个提取一次
str1[::-1]  将字符逆序排列
'''
```

#### 字符串的格式化

```
第一种格式化:
%s:    给字符串站位
%d:     给int类型站位
%f:     给浮点类型站位,  默认保留6为小数
        %.2f:  保留两位小数
        %10.2f  共10位,保留两位小数,其他为使用空格补齐
         %010.2f  共10位,保留两位小数,其他为使用0补齐
%c:     打印一个字符
%o:    将十进制转换成八进制
%x:    将十进制转换成十六进制
```

#### 路径

```
相对路径:(有参照物而言)
  	当前文件: 当前执行的文件就是当前文件.
    当前文件夹: 当前执行文件所在的文件夹就是当前文件夹
    ../lhy.jpg   上一级
    ../../lhy.jpg  上上一级
    ../作业/lhy.jpg
绝对路径:(表示唯一性)   /(目录分隔符或者文件夹分隔符)
  		1.磁盘绝对:C:/Users/刘海艳/Desktop/day03
    	2.站点绝对:https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=398724402,2324394055&fm=200&gp=0.jpg
            
            
linux 操作系统:
/root/admin/index/index.html
第一个/表示:  根目录
往后走目录之间的/表示不:  目录分隔符
  
  
 
http:   默认端口是80-
https: 默认端口443    针对于网络协议更安全可靠,具有加密的功能
  
网站协议组部分:
https://www.baidu.com:80/index.html?name=shilin&sex=nan&height=180
http/https:  网站协议  1.1
www.baidu.com: 域名
80:  端口号      443(https)  21(ftp)  3306(数据库)
文件路径: application/index.html
参数:  之间使用&隔开   键值对的形式存在   name=狗蛋   sex=女   height=160
```

#### 字符串处理常用的函数：

```
#Author by Liguangbo
#_*_ coding:utf-8 _*_
str="i like study python, welcome to my python program\t."
#首字母大写
print(str.capitalize())
#I like study python, welcome to my python program.
#关键字在字符串中出现的次数
print(str.count(" "))
#8
#打印100个字符，如果str不够，则用-代替，且字符str位于中间
print('hello world'.center(20,'-'))
#----hello world-----
#判断字符串是否以‘l’和‘.’开头结尾
print(str.startswith('l'))
#False
print(str.endswith('.'))
#True
#将tab键转为5个空格
print(str.expandtabs(tabsize=51))
#i like study python, welcome to my python program  .
#查找第一个sub出现的位置
sub='p'
print(str[str.find(sub):])
#python, welcome to my python program  .
#字符串的参数调用及赋值
s="my name is {name},i am {years} years old!"
print(s.format(name="ligb",years="28"))
print(s.format_map({'name': 'ligb' ,'years':28}))
#my name is ligb,i am 28 years old!
#判断是否是由阿拉伯数字或字母组成，不能包含符号、空格
x='我'
print(x.isalnum())
#True
#判断是否是纯字符，不能包含数字或者符号
print(x.isalpha())
#True
print('一'.isdecimal())
#False
print('1'.isdigit())
#True
#判断是否是小写、大写
print('a'.islower())
#True
print('a'.isupper())
#False
#判断是否所有单词首字母大写
print('My Name Is '.istitle())
#True
#判断文件是否可以打印
print('my name is ligb'.isprintable())#tty drive等文件不可打印
#True
#列表转字符串
print('%'.join(['wo','men','de','jia']))
#wo%men%de%jia
#若字符串长度不够20，则在末尾加*补充
print('hello world'.ljust(20,'*'))
#hello world*********
print('hello world'.rjust(20,'*'))
#*********hello world
#大小写转换
print('hello world'.lower())
print('hello world'.upper())
#hello world
#HELLO WORLD
#去掉首尾的回车或者换行
print('     hello world\n'.strip())
print('-----')
#hello world
#-----
#去掉左右的回车或者换行
print('     hello world\n'.rstrip())
print('     hello world\n'.lstrip())

#查找最右边的关键字
print('hello world !'.rfind('world'))
#以空格为分割符，生成列表
print(' '.join('hello world my name is'.split()))
print('hello world my name is'.split())
#['hello', 'world', 'my', 'name', 'is']
print('hello+world+my+name+is'.split('+'))
#['hello', 'world', 'my', 'name', 'is']
#按照换行来分
print('hello \n world'.splitlines())
#['hello ', ' world']
#调换大小写
print('Hello World'.swapcase())
#hELLO wORLD
print('hello world'.title())
#Hello World
```

# 