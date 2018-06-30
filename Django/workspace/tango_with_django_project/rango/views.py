from django.http import HttpResponse

def index(request):
    return HttpResponse('Rango say hello word!')


def zby(request):
    return HttpResponse('张冰洋，你好！')

"""
简单的分析这三行代码是如何运行的？、
1 首先从django.http导入 HttpResponse
2 在views.py文件中，一个函数对应的是一个视图，这里我们只编写了一个视图即（index）
3 视图函数中至善有一个参数，即一个HttpResonse对象，它也在django.http米模块中，按约定，这个参数的名字为request，如果你愿意修改的话，也是可以修改的
4 视图函数必须返回一个HttpResponse对象，简单的HttpResponse的内容是字符串，表示发送给客户端的内容。


"""


