# javascript、ajx、jquery

#### argumens.callee()

```
在函数内部内部有两个特殊的对象arguments和this,arguments的主要作用是保存函数参数，但这个对象有一个名为callee的属性，该属性是一个指针，只想拥有这个arguments对象的函数.
arguments.callee.caller是调用函数的对象

function factorial(num){    
   if (num <=1) {         
      return 1;     
   } else {         
   return num * factorial(num-1)     
   } 
}  

定义阶层函数一般都会调用函数本身，
function factorial(num){    
   if (num <=1) {         
      return 1;     
   } else {         
   return num * arguments.callee(num-1);
   } 
}  
```

#### 二、this

```
在函数中this也是一个特殊的对象，它表示调用函数的本身，是谁调用了这个函数，那么this就代表的是谁。
```

#### 四、BOM对象

```
BOM:window对象
	aler()/prompt（）/confirm（）
	setTimeout（）/setInterval（）
	document/location
	history/screen/navigator
```

#### 五、DOM对象

```
	======================拿到单个元素============================
	getElementById() \querySelector();
	===========================以下是拿到的多个元素==================
	getElementsByTagName()\\getElementsByClassName();
	querySelectorAll()\\getElementsByName();
	element-
		---textContent(文本)\innerHtml(可以带标签)\
		---element.id\element.src\element.href --------可以得到元素的属性值
		 ------removeAttribute()--------删除属性
		---getAttribute()/setAttribute()-----得到/设置元素的属性
	-操作属性
	-creatElement（）------创建元素
	-insertBefore/appendChild/removeChild---在元素前出入新元素/在元素后追加新元素/删除元素
	-children/firstchild/lastchild----拿到子标签/拿到第一个子标签/拿到最后一个子标签
	-parentNode()----父节点
	-previousSibling/nextSibling ------上一个兄弟节点/下一个兄弟节点
	-className / style --------类名/css属性
```

#### 六、AJX异步请求

```
	-----Ajax（Asynchronous Javsscript and XML）
	-----做异步请求（不中断用户体验）和局部刷新（DOM）
	----XMLHttprequest
		open（‘get',url,true）
		send()
		onreadystatechanage = function(){};
		readystate == 4
		status == 200
		responseText
	---------JSON
	-----parse 把字符串解析成json对象
	-----stringify 把json对象转换成字符串
```

