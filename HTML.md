```html
html···
```

HTML : hyper text mark language :文本标签语言

HTTP协议:hyper text transfer protocol        ‘HTTP协议’

TAG: content  内容

CSS: display 显示

JS: javascrip : behavior 交互式行为

SEO——search engline optimization 搜索引擎优化

# 文本相关的标签

<h1>---<h6> : 一级标题到六级标题，块级

<p>: 段落      块级

<hr>:水平标尺

<sup>: 上标 

<sub>: 下标

<em>: 呈现被强调的文本

<strong>: 定义重要的文

# 列表

无序标签：unordered  list   简称    UL

<ul>

```HTML
<li>草莓</li>
<li>殷桃</li>
```
</ul><!--unodered list无序列表-->

有序列表：order list  简称 ： 'oL'

<ol>

			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
</ol>

定义列表：definition list  简称 dl

		<dl>
			<dt>html</dt> <!--difinition title定义标题-->
			<dd>超文本标记语言/超文本标签语言</dd><!--difinition description 定义说明-->
			<dt>css</dt>
			<dd>层叠样式表/级联样式表</dd>
		</dl>
# 连接：

## a     1    页面连接：可以连接自己的网站，也可以连接别人的网站

~~~
<a href="http://www.baidu.com"target='_self'><img src='https://www.baidu.com/img/bd_logo1.png?where=super'></a> <!--在当前窗口打开-->
		<a href="http://www.tensent.com"target='_black'>腾讯</a>
			 <!--新窗口打开-->
		<a href="http://python.org">python官网
</a>
~~~

##   a     2        锚点连接

~~~
<P id='top'>
<!--回到指定id的地方-->
		<a href="#top">回顶部</a>
~~~

## a           3    功能性连接

~~~
<!--功能链接 : 执行某项功能-->
		<a href="maileto:jackfruad@126.com">联系站长</a>
		<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1406906386&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1406906386:53" alt="和我聊一聊" title="和我聊一聊"/></a>	
~~~

# 图片：'img '

##   img<src='路径'   alt='替换内容'>

```
<img src='img.jpg' alt='这是一个美女'>
```

# 表格： 

## rowspan:贯穿列

## colspan：贯穿行

```
<!--table>tr*3>td*4 三行四列-->
		<table border="1">
			<caption>球员数据统计</caption>
			<tr align='center'>
				<th>姓名</th>
				<th>年龄</th>
				<th>性别</th>
				<th>爱好</th>
			</tr>
```

# 音频：

## audio/source

~~~
<audio controls autoplay loop>
	<source src="bmusic/xiaoyequ.mp3">
</audio>
~~~



# 视频：

## video/source

~~~
<video controls>
	<source src="video/movie.mp4" width='100'>
</video>
~~~

# 区域：

##  div(块级）/span（行级）

~~~
<p>我的母亲有 <span style="color:blue">蓝色</span> 的眼睛。</p>
<div><img src='img.jpg' alt='这是一个美女'></div>
~~~

# 表单：

## form /action:

### methon= get/post     从服务器得到用get， enctype='multipart/form-data'上传文件用post

# 文本文件：

~~~
<form action="" method="post">
	<input type="text" name="uid" placeholder='请输入用户名' maxlenth='10'required></p>
	<p><label>密码：</label>
	<input type="password" name="pwd"></p>
	<p><label>确认密码：</label>
	<input type="password" name="repwd"></p
</form>
~~~

# radio：单选

~~~
<form action="" method="post">
	<label>性别：</label>
		<p><input type="radio" name="sex">男
		<input type="radio" name="sex" checked>女></p>
</form>
~~~

# checketbox: 多选

~~~
					<form action="" method="post">
					<label>爱好：</label>
						<input type="checkbox" name="fav">游戏
						<input type="checkbox" name="fav" checked disabled>阅读
						<input type="checkbox" name="fav">旅游
						<input type="checkbox" name="fav" checked>运动
					</form>
~~~

# fileset:对表单中的元素进行分组

~~~
<form>
  <fieldset>
  	<legend>选填信息<legend>
    <legend>Personalia:</legend>
    Name: <input type="text"><br>
    Email: <input type="text"><br>
    Date of birth: <input type="text">
  </fieldset>
</form>
~~~

# 实体字符替换符

~~~
	空格	&nbsp;	&#160;
<	小于号	&lt;	&#60;
>	大于号	&gt;	&#62;
&	和号	&amp;	&#38;
"	引号	&quot;	&#34;
'	撇号 	&apos; (IE不支持)	&#39;
￠	分	&cent;	&#162;
£	镑	&pound;	&#163;
¥	人民币/日元	&yen;	&#165;
€	欧元	&euro;	&#8364;
§	小节	&sect;	&#167;
©	版权	&copy;	&#169;
®	注册商标	&reg;	&#174;
™	商标	&trade;	&#8482;
×	乘号	&times;	&#215;
÷	除号	&divide;	&#247;
~~~

# 网页的引进：iframe

~~~
<iframe src="http//:maps.baidu.com/" frameborder="0" width='400' height="300"></iframe>
~~~





