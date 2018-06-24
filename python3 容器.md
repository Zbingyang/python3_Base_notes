# python3 容器

#### *列表*

```
import heapq

nlargest找出列表中最大的n个数，以列表形式返回：

print（heapq.nalargest(5,list1))

找出列表中最小的n个数，以列表形式返回：

print(heapq.nsallest(3,list）

获取列表的部分：

列表的切片：

numbers = [1,45,67,34,45,56,89]

print(numbers[0:3]) :获取索引为【0-3】（不包括3）对应的元素：

【：4】就相当于【0:4】

print(numbers[0:4])

【2：】就相当于【2:len(list)]

print(numbers[2:])

获取所有

print([:])

如果下标大于列表的长度，返回取到列表的最后一个值，且不会报错。

索引值是负数同样有效。

print（numbers【-3：-1】）

用*号：

numbers = ['yuying',12,34,56,78]

name,*score = numbers

print(name)

:yuying

print(scores)

:12,34,56,78

列表的复制：

list1 = 【1,2,3,4,5,6,78】

1 .time = list1[:]    可以达到备份的目的

2.time = list1.copy()

列表的连接：

通过   list1    +     list2  合并两个列表
列表的追加元素：
list1 = []
#把for循环的i的值全部加到空列表list1中，append只能在列表的末尾去追加元素
	list1.append(i)
列表的插入：insert(列表的下标,值)
在列表的下标之前插入一个新的元素
list1 = [1,2,3,4,56,]
list1.insert(0,100)  ------------>[100,1,2,3,4,56]
列表的删除：
list1 = [1,2,3,4,5,6]
del list1   ----------删除列表
list1.remove(2)-----------删除列表中为2的元素
list1.pop()-----------------默认删除最后一个元素
list1.pop(0)----------------删除下标为0的元素


	
```

#### 元组 tuple（）

```

```

#### 集合 set

```

```

#### 字典 dict

```

```

