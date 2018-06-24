# python的基本数据类型(二)

# 列表list

```
'''
列表:  格式:  列表名 = [元素1, 元素2,,...]
'''
# append()往列表后边追加一个元素
list1 = [1, 2, 3, 4]
list1.append(100)
# print(list1)
list1.append([200, 400, 600])
# print(list1)

# 在末尾一次性追加另外一个列表中的多个值
list2 = [3, 4, 5]
list2.extend([200, 300, 400])
# print(list2)


'''
insert():在指定下标出添加一个元素,原来位置处的元素往后移动
@参数一: 列表的下标
@参数二: 列表中下标所对应的值
'''
list3 = [5, 6, 7]
list3.insert(1, 250)
# print(list3)

'''
pop():将列表中指定下标的元素删除, 如果默认不传递参数,则删除的是最后一个元素
@参数一: [可有可无] 列表对应的下标
'''
list4 = [3, 4, 5, 6, 7, 8]
list4.pop()
list4.pop()
# print(list4)
list4.pop(1)
# print(list4)


'''
remove():移除列表中指定的元素
@参数一: 列表中的元素
'''
list5 = [3, 4, 5, 6, 7]
list5.remove(3)
# print(list5)


'''
clear():清除列表中所有的元素
'''
list6 = [1, 3, 4]
list6.clear()
# print(list6)


'''
index():获取列表元素锁对应的下标
@参数一:  列表中的某一个元素
返回值:  列表中元素所对应的下标
'''
list7 = [1, 2, 3, 4, 5, 6]
index1 = list7.index(3)
# print(index1)

# 获取列表的长度
list8 = [1, 2, 3, 4, 5]
# print(len(list8))


list9 = [1, 3, 4, 6, 7]
# print(max(list9))

list10 = [1, 3, 4, 6, 7]
# print(min(list9))


'''
count(): 计算列表中元素出现的次数
'''
list11 = [1, 3, 4, 3, 3, 3, 3, 6, 7]
# print(list11.count(3))


'''
reverse():将列表进行倒序排列
'''
list12 = [1, 2, 3, 4, 5, 10, 7, 8, 9]
list12.reverse()
# print(list12)




'''
sort():将列表中的元素进行升序排列
'''
list13 = [1, 100, 78, 23, 65, 43]
list13.sort()
# print(list13)


'''
引用传递:  
在列表中,如果修改一个列表的元素,那么对应的另外一个列表的元素也改变
'''list17[1] = 250
list14 = [2, 3, 4]
list15 = list14
list15[1] = 200
# print(list14)
# print(list15)
# id():查看内存的地址
# print(id(list14))
# print(id(list15))
list17[1] = 250
"""
值传递
在列表中修改一个元素的值时,对应的另外一个列表中的值是不发生改变的
'''
list16 = [1, 2, 3, 4]
list17 = list16.copy()
list17[1] = 250
print(list16)
print(list17)
print(id(list16))
print(id(list17))
```

# 元组tuple

```
'''
元组:也是一种有序集合
特点:
1.跟列表非常相似:  list1 = []   tuple1 = ()
2.一旦定义好之后不能修改
3.使用小括号括起一个集合

'''
# 创建一个空元祖
tuple1 = ()
# print(tuple1)
# print(type(tuple1))

tuple2 = (23, 3.14, 'aaa', None, True)
# print(tuple2)


tuple3 = (4, )#tuple
tuple3 = (4)#int
# print(tuple3)
# print(type(tuple3))





# 访问元祖的元素
tuple4 = (2, 3, 4, 5, 6)
# print(tuple4[0])
# print(tuple4[1])
# 元祖在访问的时候一定不能溢出(越界),直接报错
# print(tuple4[5])
# 获取元祖中最后一个元素
# print(tuple4[-1])
# print(tuple4[-2])
# 一定不能越界
# print(tuple4[-6])



tuple5 = (1, 2, 3, 4, [12, 34, 45])
# print(tuple5)
# tuple5[0] = 150#直接报错, 元祖定义好之后是不能修改的
# print(tuple5)
# print(tuple5[-1][-2])
# print(tuple5[4][1])


# 删除元祖的用法跟删除变量的用法一致
tuple6 = (2, 3, 5, 6)
del tuple6
# print(tuple6)

# 元祖进行操作
tuple7 = (3, 4, 5)
tuple8 = (6, 7, 8)
# 将两个元祖合并成一个新的元祖
tuple9 = tuple7 + tuple8
# print(tuple9)
# print(tuple7, tuple8)



# 将元祖重复n次,最后返回一个新的元祖
tuple10 = (3, 4, 5)
# print(tuple10 * 10)


# 判断一个元素是否在一个元祖中,如果在返回True,否则返回False
tuple11 = (3, 5, 7)
# print(4 in tuple11)


# 元祖的截取
# 格式: 元祖名[开始下标:结束下标]
tuple12 = (1, 2, 3, 4, 5, 6, 7, 8, 9,10)
# print(tuple12[1:5])
# print(tuple12[3:])
# print(tuple12[:6])
# 将元祖进行逆序排列
# print(tuple12[::-1])


# 二维元祖:
tuple13 = ((2, 3, 4), (5, 6, 7))
# print(tuple13[1][1])


# 元祖的方法
# 求一个元祖的长度
tuple14 = (2, 3, 4, 5)
# print(len(tuple14))
# print(max(tuple14))
# print(min(tuple14))



# 对列表进行遍历
# for i in [1, 2, 3, 4, 5]:
#     print(i)



# 对元祖进行遍历
# for x in (3, 4, 5, 6, 7):
#     print(x)



# 将列表转换成元祖
list11 = [3, 5, 6, 8]
tuple15 = tuple(list11)
# print(tuple15)



# 将元祖转换成列表
tuple16 = (4, 6, 8, 9)
list12 = list(tuple16)
# print(list12)



list13 = range(0, 10)
print(type(list13))
# range(): 从开始值开始,但不包含结束值[0, 10)
# for i in range(0, 10):
#     print(i)
```

# 字典dict

```
'''
dict(字典): 在字典里边一般存放的是键值对的形式.
键1 = 值1   key = value
键1 : 值1
写法: {键1:值1, 键2:值2, 键3:值3}
例子:dict1 = {'name': '刘海艳', 'age': 17, 'sex': 'girl'}
注意事项:
1.在字典中键(key)的值必须是唯一
2.在字典中可以存放多个键值对
3.在字典中键(key)必须是不可变类型   字符串  整数都可以作为键(key)
4.list和tuple都是有序集合, 而dictsahib无序集合


'''
# 必须保证字典中的key是唯一的
dict1 = {'yelei': 100, 'xiaoming' : 99, 'jianfei': 59, 'zhouying': 110}
# print(dict1)


# 元素的访问
# 获取的方式: 字典名[key]
# print(dict1['xiaoming'])
# print(dict1.get('yelei'))


# print('yelei' in dict1)

ret = dict1.get('lhy')
# if ret == None:
#     print('没有')
# else:
#     print('有')



dict2 = {'user': '大黄', 'sex': '男', 'age': 30, 'height': 150 }
# 添加元素
dict2['lover'] = '小白'
# 一个key只能对应一个value
dict2['lover'] = '小绿'


# 修改
dict2['lover'] = '小花'

# 删除
dict2.pop('sex')
# 直接报错,因为他是无需集合
# dict2.pop()
# print(dict2)


# 遍历
# for x in dict2:
#     print(x, dict2[x])
# 获取字典所有的value和key
# print(dict2.values())
# print(dict2.keys())

# for i in dict2.values():
#     print(i)
#
# for i in dict2.keys():
#     print(i)


# for k,v in dict2.items():
#     print(k, v)



for k,v in enumerate(dict2):
    print(k, v)
```

# set集合

```
''
set(集合):类似于dict, 也是无序的,以key-value新的形势存在,但是没有value
作用: 是对list,tuple,dict进行去重的, 求交集.并集
1.set是无序
2.set集合是不可改变的


'''

# set1 = set([1, 2, 3, 5, 3, 2])
# print(set1)
# print(type(set1))
# set2 = set((1, 2, 3, 5, 3, 2, 4, 5))
# print(set2)
# print(type(set2))
# set3 = set({3, 4, 5,5, 6, 3, 7})
# print(set3)
# print(type(set3))



# 添加
set4 = set([3, 3, 4, 5, 7, 2, 1, 2])
set4.add(8)
# set4.add(3)#可以添加重复的值,但是没效果

# 总结:list和dict是可改变的, 而tuple是不可改变
# set4.add([10, 9])#直接报错,不能添加list
# set4.add((10, 9))
# set4.add({'a':1})#直接报错,不能添加字典
#
# print(set4)



# 修改
set5 = set([1, 2, 3, 4, 5])
# 将list dict tuple 等等整个插入进去
# set5.update([6, 7, 8])
# set5.update({9, 10})
# set5.update((11, 56))
# print(set5)



# 删除
# set6= set([3, 4, 5, 6, 7])
# set6.remove(4)
# print(set6)

# 遍历
set7 = set([1, 2, 3, 4, 6])
set7 = set(['aaa', 'bbb', 'ccc'])
set7 = set((1, 2, 3, 2, 4, 2, 3))
# 在set集合中,没有value,即使有value也遍历不出来
set7 = set({'name':'小花', 'age': 18})
# for i in set7:
#     print(i, end = ',')



# 交集  &
set8 = set([1, 2, 3, 4])
set9 = set([3, 2, 4, 5])
set10 = set8 & set9
set11 = set8 | set9
print(set10)
print(type(set10))
print(set11)
print(type(set11))
```

# 类型转换

```
#list-set
list1 = [1, 3, 4, 5, 6]
set1 = set(list1)
# print(set1)
# print(type(set1))


# set->list
# 这是set 没有value值
set2 = {2, 3, 4, 5, 6}
# 这是dict,有value值
# set3 = {'a':1, 'b':2, 'c':3}
list2 = list(set2)
# print(list2)


# tuple->set
tuple1 = (1, 2, 3, 4, 5)
set3 = set(tuple1)
# print(set3)


# set->tuple
set4 = {2, 3, 4, 5, 6}
tuple2 = tuple(set4)
# print(tuple2)


# dict->set
dict1 = {1: '佟大为', 2:'王力宏'}
set5 = set(dict1)
# print(set5)



# set->dict
set6 = {2, 3, 4, 5}
dict2 = dict(set6)
print(dict2)
```

