#  socket套接字编程

#### 1  创建服务端

```
socket:基于TCP,UDP,IP协议封装的用于数据传输的套接字
数据传输过程：客户向服务器请求数据，服务器返回数据
AF_INET:IPV4
AF_INET6:IPV6
# type=SOCK_STREAM: 基于TCP的套接字
# type=SOCK_DGRAM:  基于UDP的套接字
# type=SOCK_RAW: 基于IP协议的原始套接字
sever = socket(family=AF_INT,type=SOCK_STREAM)
```

#### 2 绑定IP地址和端口

```
端口值在：0-65535，其中1024以下的叫著名端口，用于http，ip协议等
在同一时间统一端口上只能绑定同一服务
sever.bind('10.7.185.58',6657)
```

#### 3 开启监听模式，监听有没有客户端连接

```
sever.listen()
print('开启监听')
while True:
    # 当有客户端连接当前服务的时候，就会执行accept()调用语句
    # accept()会客服端对象和客户端的地址
    client, addr = server.accept()
    print(addr)

```

#### 4 给连接的用户发送数据，发送的数据必须是二进制数据

```

    client.send(str(datetime.now()).encode('utf-8'))

    client.send('Hello'.encode('utf-8'))

```

#### 5 断开服务端的连接

```
network1
```

#### http ip 协议

```

```

