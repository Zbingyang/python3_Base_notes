# json文件

#### json文件：

```
JSON (JavaScript Object Notation) 是一种轻量级的数据交换格式。它基于ECMAScript的一个子集。

Python3 中可以使用 json 模块来对 JSON 数据进行编解码
```



#### loads（）：json字符串的处理函数

```
对数据进行解码，解码在读文件时用的比较多,函数是将json格式数据转换为字典（可以这么理解，json.loads()函数是将字符串转化为字典）

1 import json
2 
3 # json.loads函数的使用，将字符串转化为字典
4 json_info = '{"age": "12"}'
5 dict1 = json.loads(json_info)
6 print("json_info的类型："+str(type(json_info)))
7 print("通过json.dumps()函数处理：")
8 print("dict1的类型："+str(type(dict1)))



```

#### dumps():json字符串的处理函数

```
对数据进行编码，编码在写入文件时用的比较多,函数是将一个Python数据类型列表进行json格式的编码（可以这么理解，json.dumps()函数是将字典转化为字符串）

1 import json
2 
3 # json.dumps()函数的使用，将字典转化为字符串
4 dict1 = {"age": "12"}
5 json_info = json.dumps(dict1)
6 print("dict1的类型："+str(type(dict1)))
7 print("通过json.dumps()函数处理：")
8 print("json_info的类型："+str(type(json_info)))
```

#### load（）：主要用来读json文件

```
1 import json
2 
3 # json.load()函数的使用，将读取json信息
4 with open('1.json','r',encoding='utf-8') as fn:
5 	info = json.load(fn)
6 	print(info)
```





#### dump（）：主要用来写Json文件

```
1 import json
2 
3 # json.dump()函数的使用，将json信息写进文件
4 json_info = "{'age': '12'}"
5 with open('1.json','w',encoding='utf-8') as fn: 
6 	json.dump(json_info,fn)
```

