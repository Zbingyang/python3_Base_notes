# python循环分支结构

#### 流程控制结构

```
顺序结构:程序自上而下顺序执行
分支结构:
循环结构:
```

#### 分支结构

```
第一种:  if结构
  	格式:  if 表达式:
        		语句块
     执行流程:程序遇到if结构时,判断表达式的真假,如果为真,则执行语句块,否则结束if结构    
     表达式为假的情况: 0 '' None  False []  ()  {}
 第二种: if else结构
  	格式: if 表达式:
        	语句块1
          else:
            语句块2
         执行流程:程序执行到if结构,判断表达式的真假,如果为真,则执行语句块1,如果为假,则执行else中的语句块的内容
 第三种: if-elif-else
  	格式: if 表达式1:
        	语句块1
          elif 表达式2:
            语句块2
          elif 表达式3:
            语句块3
           else:
            语句块n
         执行流程:程序执行到if语句,判断表达式1的真假,如果为真,则执行语句1,否则判断表达式2的真假,如果为真,则执行表达式2,一次类推,直到最后一个表达式为假,就执行else里边的语句块n
  第四种: 嵌套
    if  表达式1:
      if 表达式2:
        语句块1
       else:
        语句块2
     else:
      	语句块3
```

#### 循环结构

```
必不可少的三个条件:  初始值  循环条件  循环的次数
初始值:
while 表达式:
	循环体
	循环的次数
for in
```

#### break 和 contiue

```
break和continue
1.break
意思为结束循环,跳出整个循环
for m in range(3):
    if m == 0:
        for n in  range(3):
            if n == 1:
                print(m,n)
                continue
                print(n)
            if n == 1:
                print(m,n)
　　　　　　  if n == 2:
　　　　　　　　   print(m,n)

    if m == 1:
        for x in range(3):
            if x == 1:
                print(m,x)
                break
                print(n)
            if x == 2:
                print(m,x)
else:
    print(m,n,x)
    
    
0 1
0 2
1 1
1 2 1

注释：
   当’m==0‘时进入‘for n in range(3)’循环，当‘n==0’时循环里的if语句中三个条件都不满足，循环继续进行‘n==1’满足条件执行if语句输出‘0，1’，然后执行continue跳出本次循环（没有执行下一个输出语句'print(n)'  同时跳出了‘n==1’的本次循环，不会判断下面的两个if语句），进入‘n==2’的循环，判断三个if语句，第三个输出（m,n）。

当‘m==1’时进入‘for x in range(3)’循环，当‘x==1’时满足第一个if语句，输出（m,n），然后执行break，跳出整个‘for x in range(3)’循环。现在只有一个总循环在执行‘for m in range(3)’,总循环结束执行else语句。
```

