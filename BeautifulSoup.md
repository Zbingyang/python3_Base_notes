# from bs4 import BeautifulSoup

### beautifulSoup(markop,'html.parser')是对html文档的解析。

#### BeautifulSoup(markop,'html.parser')是对html文档的解析。

### print(soup.prettify())

```
打印soup的内容，并且是格式化输出
```

## 四大对象种类：

#### BeautifulSoup静复杂的html文档转换成一个复杂的树行结构,每个节点都是python对i象，所有的对象归纳为4种；

#### 1   Tag ：是html中的一个个标签；列如：

#### <title>the dormouse's story</title>

### 通过beautifulsoup获取tags

#### *它查找的是在所有内容中的第一个符合要求的标签 

##### 

```
print soup.title
#<title>The Dormouse's story</title>

print soup.head
#<head><title>The Dormouse's story</title></head>

print soup.a
#<a class="sister" href="http://example.com/elsie" id="link1"><!-- Elsie --></a>

print soup.p
#<p class="title" name="dromouse"><b>The Dormouse's story</b></p>
```

#### 对于 Tag，它有两个重要的属性，是 name 和attrs

#### name:soup 对象本身比较特殊，它的 name 即为 [document]，对于其他内部标签，输出的值便为标签本身的名称 

### attrs:获取标签的属性 ，也可以改变标签的属性 ，可以通过标签的src属性来获得链接地址

### **NavigableString**

##### 既然我们已经得到了标签的内容，那么问题来了，我们要想获取标签内部的文字怎么办呢？很简单，用 .string 即可 

##### 它的类型是一个 NavigableString，翻译过来叫 可以遍历的字符串，不过我们最好还是称它英文名字吧。 

```
print soup.p.string
#The Dormouse's story

类型
print type(soup.p.string)
#<class 'bs4.element.NavigableString'>
```

### **BeautifulSoup**

##### `BeautifulSoup` 对象表示的是一个文档的全部内容.大部分时候,可以把它当作 `Tag` 对象，是一个特殊的 Tag 

### **Comment**

##### `Comment` 对象是一个特殊类型的 `NavigableString` 对象，其实输出的内容仍然不包括注释符号，但是如果不好好处理它，可能会对我们的文本处理造成意想不到的麻烦。 

##### **.children** :`.contents` 和 `.children` 属性仅包含tag的直接子节点 

```python
返回的不是列表，是一个列表生成器，通过遍历来获取每一个子节点

for child in  soup.body.children:
    print child

<p class="title" name="dromouse"><b>The Dormouse's story</b></p>

<p class="story">Once upon a time there were three little sisters; and their names were
<a class="sister" href="http://example.com/elsie" id="link1"><!-- Elsie --></a>,
<a class="sister" href="http://example.com/lacie" id="link2">Lacie</a> and
<a class="sister" href="http://example.com/tillie" id="link3">Tillie</a>;
and they lived at the bottom of a well.</p>


```

### **.descendants所有子孙节点**

```
.descendants 属性可以对所有tag的子孙节点进行递归循环，和 children类似，我们也需要遍历获取其中的内容。
```

## 搜索文档树

#### 1   find_all(name,attrs,recursive,text **kwargs)