# HTML标签

<!-- HTML的结构： -->
<!-- HTML中，标签分为两种
单标签：<input/> ：<标签名 属性=属性值 属性=属性值/>
双标签 <html></html> ：<标签名 属性=属性值 属性=属性值>任何内容</标签名> 
标签的关系一：包含关系：head标签包含title标签
标签的关系二：并列关系head标签和body标签并列

####=======标签名不区分大小写，但是一般的标签名都小写=============########
-->

<!-- 声明文本类型：对应的是html5 -->
<!DOCUTYPE html>
<!--html 网站的素有内容都要写到html标签中，不管是网页中可以看到的还是看不到的 -->
<html>
<!--head 在这个标签中写网页中设置相关的信息，写在这个标签中的内容是在网页上看不到的，主要包含：meta,link,style等-->
<head>
	<!-- 设置网页标题 -->
	<title>python1803官网</title>
</head>
<!-- 网页上显示的内容都放在body这个标签里面 -->
<body>
</body>
</html>

## ============== 文本标签============= 

<!DOCTYPE html>
<html>
<!-- 元素指的是：开始标签 + 结束标签 + 两个标签里的内容-->
<!-- head标签里的内容：title：设置网页标题， -->
<head>
	<!-- meta是单标签，设置元数据，包括编码方式，搜索关键字，网站的描述，爬虫方式等 -->
	<!-- meta 属性是用来声明编码方式的 -->
	<meta charset="utf-8"/>
	<title>张冰洋的首页</title>
</head>
<body>
	<!-- 标题标签h1-h6，一个网页中只能有一个h1标签 -->
	<h1>张雨生的‘我变了还是没变</h1>
	<h2>是我想太多，你总这样说</h2>
	<h3></h3>
	<h4></h4>
	<h5></h5>
	<h6></h6>
	<!-- 段落标记 p标签,一个p标签对应一个段落，两个p标签中间会多一个换行,并且中间会空出一行的位置 -->
	<!-- 空格标签：&nbsp； -->
	<p>&nbsp;&nbsp;&nbsp;&nbsp;中新网客户端6月3日电 针对江苏省盐城市阜宁县一菜场发生的杀人案件，今晚，江苏省盐城市公安局官方微博发布案件通报称，目前，犯罪嫌疑人朱某经医院抢救无效死亡。</p>
	<!--在html文本中‘空格&nbsp;代表一个空格’，'回车'是无用的-->
	<!-- <br/>单标签直接换行；不会空出一行 -->
	<p>&nbsp;&nbsp;&nbsp;&nbsp;中新网客户端6月3日电 针对江苏<br/>省盐城市阜宁县一菜场发生的杀人案件，<font color="red">今晚</font>，江苏省盐城市<b><I>公安局</I></b>官方微博发布案件通报称，<strong>目前</strong>，犯罪嫌疑<b>人朱</b>某经医院抢救无效死亡。</p>
	<!-- font标签，对文字进行字体上的处理 size：对应的字体大小，color：对应的颜色，可以使对应的单词，或者rgb的十六进制 -->
	<font size="20" color="#0000ff" face="华文行楷">是我想太多，你总这样说</font>
	<!-- <hr/>显示一个水平线 -->
	<hr/>

</body>
</html>

# =============列表标签=========== 

<!-- 三种列表 
ul：无序列表
ol：有序列表
dl：自定义列表：dt表示自定义的对象; dd：是对这个对象类解释说明的。
所有的列表标签都是配合li标签使用的
-->

#  ============图片标签============

​	<!-- src:是图片的路径（1本地图片的路径，2网络图片的连接）
	如果图片也当前的html文件在同一文件夹下，路径就是：图片名字 + 后缀
	图片图片和当前文件夹在同一 没目录下，src给“图片文件夹/图片名.后缀”
	其他情况，src给/图片文件夹/图片名.后缀
	网络图片：src给 url
	 -->
	<img src="add.\psb.jpg" title="李雯雯" alt="呵呵哒">
	<!-- 图片标签在显示的时候是不会自动换行的 -->
	<!-- alt参数是当图片显示不出来的时候，用文字来传达错误 -->
	<!-- title 图片加载成功后，鼠标停留在图片上显示的文字 -->
	<!-- <img src="http://h.hiphotos.baidu.com/image/pic/item/730e0cf3d7ca7bcba51475b9b2096b63f624a83d.jpg" alt="这是一个美女" title="abcds"> -->

# ============链接标签==============

<!-- 1 锚点连接，用于回到页面的底部，中部，顶部 -->
	<!-- 2 功能性链接，比如联系站长 -->
	<!-- 3 超链接，用于页面的跳转 -->
	<!--target="_self"在当前页面打开 默认参数 -->
	<!-- target=“_black跳转到页面打开 -->
	<!-- <a href="http://image.baidu.com/(跳转页面)">显示的文字</a> -->
	<a href="http://image.baidu.com/" target="self._black">百度图片</a>

# ============表格标签=============

<!--tr table中有多少个行 -->
		<!-- td table中一个tr标签中有打td标签就有多少列
		border ：表格的边框宽度
		width：整个表格的宽度
		height：作为table的属性，是整个表格的高度
				：作为tr属性 ，来设置每一行的的行高	
		cellspacing:设置单元格时间的间距	
		cellpadding：设置单元格中的内容到单元格之间的距离
		border：边框的颜色
		align:是作为table的属性，设置整个表格在页面中的对齐方式
		align:可以作为tr，td的属性，设置表格的内容的对齐方式

# =============表单标签============

​	<!-- action的属性值为：接口名 或者是提交的位置-->
	<!-- method的作用是指定，提交的方式 -->
	<form method="post/get" action="">
		<!-- type的之不一样，对应的样式也不一样普通的输入框 -->
		<!-- type的值为：text对应的是普通的文本框 -->
		<!-- value属性，对应的是默认的显示内容 -->
		<!-- name属性，对于提交表单必须设置，方便后边提交数据 -->
		<!-- placehoder 占位符 -->
		<!-- size：长度 -->
		<!-- maxlength : 输入框能输入的输最大的字符个数-->
		用户名：<input type="text" name="username" value="" placeholder="请输入用户名">

​		<!-- password:密文输入，且看不到输入的内容 -->
		密码:<input type="password" name="password" value="请输入密码">

​		<!-- 同一个单选框的类型的name的属性要相同 -->
		<!-- checked属性默认选择 -->
		<input type="radio" name="sex" checked="checked">男
		<input type="radio" name="sex">女

​		<!-- checkedboxs:复选框 -->
		<input type="checkbox" name="friut">记住密码
		<p></p>
		<input type="checkbox" name="friut" checked="checked">苹果
		<input type="checkbox" name="friut">桃子
		<input type="checkbox" name="friut">习惯
		<input type="checkbox" name="friut" disabled="disabled">榴莲
		<p></p>
		<!-- 普通value就是设置按钮上的文字 -->
		<input type="button" name="surebtn" value="看我 baby">

​		<!-- 图片提交按钮  设置src属性-->
		<!-- 提交的时候会将表单中的内容按照指定的方式提交到指定的位置 -->

​		<input type="image" name="" src="">
		<!-- 重置按钮 或者 提交按钮 -->
		<input type="reset" name="" value="重置">
		<input type="submit" name="" value="提交">

​		<!-- 上传文件 -->
		<input type="file" name="file" value="上传文件">

​		</form>

##### =====================单选框和复选框========================

<!-- 表单元素是允许用户在表单中输入内容：文本域（textarea）,下拉列表，单选框（radios-buttons），复选框（checkboxes） 等等
	多数时候会用到<input/>输入标签，输入的类型是由type属性去定义的
	-->

<form caption="">
	firstname:<input type="text" name="firstname"><br>
	lastname:<input type="text" name="lastname">
</form>

<form caption="">
	密码:<input type="password" name="password">
</form>

<form caption="单选框">
	<input type="radio" name="sex" value="男">男<br>
	<input type="radio" name="sex" value="女">女
</form>

<form>
	<input type="checkbox" name="fruit" checked disabled>桃子<br>
	<input type="checkbox" name="fruit">苹果<br>
	<input type="checkbox" name="fruit">习惯<br>
	<input type="checkbox" name="fruit" disabled>榴莲
</form>

##### ===================下拉列表========================

<form>
		<!-- selected默认选中 -->
		<select>
			<option>北京</option>
			<option selected="selected">四川</option>
			<option>新疆</option>
			<option>内蒙</option>
			<option>重庆</option>
			<option>江西</option>
		</select>省/市

</form>

