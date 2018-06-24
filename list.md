### import heapq

## nlargest找出列表中最大的n个数，以列表形式返回：

#### print（heapq.nalargest(5,list1))

## 找出列表中最小的n个数，以列表形式返回：

#### print(heapq.nsallest(3,list）

## 获取列表的部分：

### 列表的切片：

#### numbers = [1,45,67,34,45,56,89]

### print(numbers[0:3]) :获取索引为【0-3】（不包括3）对应的元素：

### 【：4】就相当于【0:4】

#### print(numbers[0:4])

### 【2：】就相当于【2:len(list)]

#### print(numbers[2:])

### 获取所有

#### print([:])

#### 如果下标大于列表的长度，返回取到列表的最后一个值，且不会报错。

#### 索引值是负数同样有效。

#### print（numbers【-3：-1】）

### 用*号：

#### numbers = ['yuying',12,34,56,78]

#### name,*score = numbers

#### print(name)

#### :yuying

#### print(scores)

#### :12,34,56,78

#### 列表的复制：

#### list1 = 【1,2,3,4,5,6,78】

#### 1 .time = list1[:]    可以达到备份的目的

#### 2.time = list1.copy() 

#### 列表的连接：

#### 通过   list1    +     list2  合并两个列表

####  列表元素的删除

```
>>> l = ['no surfing', 'flippers']
1
法一：remove(val)
>>> l.remove('no surfing')
>>> l
['flippers']
1
2
3
（1）remove() 的参数是具体的元素值，而不是索引，
（2）如果知道索引，如何使用 remove 删除该索引上的元素值，

>>> l.remove(l[1])
1
这样做是很大的风险的，因为 list 允许重复，remove() 删除的列表中第一个和参数值相等的元素

法二：pop(0)
（1）pop() 接收的是索引，无参的情况下删除的是最后一个元素（典型的栈的特性）

（2）pop() 存在返回值，返回的是删除的元素值

l.pop() <==> l.pop(-1)
1
（3）list 的 append()（添加到尾部），pop()（从尾部弹出），成功地将 list 变成了 stack

法三：del(l[0])
>>> del(l[0])
```



