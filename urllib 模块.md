

# urllib 模块

#### 导入 from urllib  import   request

#### 发送请求：

```
resp = request.urlopen('http://www.baidu.com')
```

#### 使用相应对象输出数据：

```
print(resp.read().decode('utf-8'))
```

### 模拟真实浏览器

#### 携带user_Agent头

```python
req = request.Resquest('http://www.baidu.com')
req.add_header = (key:value)
resp = request.urlopen(req)
print(resp.read().decode('utf-8'))
```

#### 使用post

```
from urllib import parse
```

#### 使用urlencode生成post数据

```
postDta = parse.urlencode([
    (ket1:value1)
    (key2:value2)
    (key3；value3)
    }
])
```

#### 使用postData发送post请求

```
resp = request.urlopen(url,data = postData,encode('utf-8'))
```

#### 得到请求状态:

```
resp.status
```

#### 得到服务器的类型

```
resp.reason
```

| 属性       | 指数 | 值                       | 价值如果不存在                                               |
| ---------- | ---- | ------------------------ | ------------------------------------------------------------ |
| `scheme`   | 0    | URL方案说明符            | *方案*参数                                                   |
| `netloc`   | 1    | 网络位置部分             | 空字符串                                                     |
| `path`     | 2    | 分层路径                 | 空字符串                                                     |
| `params`   | 3    | 最后一个路径元素的参数   | 空字符串                                                     |
| `query`    | 4    | 查询组件                 | 空字符串                                                     |
| `fragment` | 五   | 片段标识符               | 空字符串                                                     |
| `username` |      | 用户名                   | [`None`](https://docs.python.org/3/library/constants.html#None) |
| `password` |      | 密码                     | [`None`](https://docs.python.org/3/library/constants.html#None) |
| `hostname` |      | 主机名（小写）           | [`None`](https://docs.python.org/3/library/constants.html#None) |
| `port`     |      | 端口号为整数（如果存在） | [`None`](https://docs.python.org/3/library/constants.html#None) |

 

### 







#### 