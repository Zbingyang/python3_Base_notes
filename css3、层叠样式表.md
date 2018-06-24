# css3、层叠样式表

## ================html的布局=================

 <=======================标准流==========================
1 标准流:块级元素一块占一行(不管块的宽度是否是网页宽度)，多个行内元素在一行显示，直到遇到父级的边界
从上往下依次排列

块元素包括：(可以直接设置宽高)<body>  <from>  <select>  <textarea>  <h1-h6> <html> <table>  <button>  <hr>  <p>  <ol>  <ul>  <dl>    <div>

行级元素：   <meat>   <title>  <lable>  <span>  <br> <a>   <style>  <em>  <b>  <i>   <strong>   <img>      

行内元素分为：行内元素，行内块元素
行内元素：不能直接设置宽高 a 
行块级元素:(可以直接设置宽高) img  input  td  
================================浮动=======================================
2 浮动:在块里用浮动,脱离标准流，可以让竖着显示的块横着显示。一般的浮动的对象是块级元素。

 -->

## ==========层叠样式表分为三种=============

1 内嵌样式表

```
<p style="color:red">hello world</P>
```

2 内部样式表

```
内部样式表一般写在<head></head>标签里面
```

3 外部样式表

```
外部样式表是写在项目下的css文件下的，需要渲染页面的时候，就去引入外部样式表，也是在<head></head>标签里引入外部样式表。
<!-- <link rel="stylesheet" type="text/css" href="css01.css"> -->
```

## =============css选择器=================

|                                                              |                       |                                                     |      |
| :----------------------------------------------------------: | :-------------------: | :-------------------------------------------------: | :--: |
|                            选择器                            |         例子          |                      例子描述                       | CSS  |
| [.*class*](http://www.w3school.com.cn/cssref/selector_class.asp) |        .intro         |           选择 class="intro" 的所有元素。           |  1   |
|  [#*id*](http://www.w3school.com.cn/cssref/selector_id.asp)  |      #firstname       |          选择 id="firstname" 的所有元素。           |  1   |
|   [*](http://www.w3school.com.cn/cssref/selector_all.asp)    |           *           |                   选择所有元素。                    |  2   |
| [*element*](http://www.w3school.com.cn/cssref/selector_element.asp) |           p           |                 选择所有 <p> 元素。                 |  1   |
| [*element*,*element*](http://www.w3school.com.cn/cssref/selector_element_comma.asp) |         div,p         |        选择所有 <div> 元素和所有 <p> 元素。         |  1   |
| [*element* *element*](http://www.w3school.com.cn/cssref/selector_element_element.asp) |         div p         |        选择 <div> 元素内部的所有 <p> 元素。         |  1   |
| [*element*>*element*](http://www.w3school.com.cn/cssref/selector_element_gt.asp) |         div>p         |      选择父元素为 <div> 元素的所有 <p> 元素。       |  2   |
| [*element*+*element*](http://www.w3school.com.cn/cssref/selector_element_plus.asp) |         div+p         |     选择紧接在 <div> 元素之后的所有 <p> 元素。      |  2   |
| [[*attribute*\]](http://www.w3school.com.cn/cssref/selector_attribute.asp) |       [target]        |           选择带有 target 属性所有元素。            |  2   |
| [[*attribute*=*value*\]](http://www.w3school.com.cn/cssref/selector_attribute_value.asp) |    [target=_blank]    |          选择 target="_blank" 的所有元素。          |  2   |
| [[*attribute*~=*value*\]](http://www.w3school.com.cn/cssref/selector_attribute_value_contain.asp) |    [title~=flower]    |    选择 title 属性包含单词 "flower" 的所有元素。    |  2   |
| [[*attribute*\|=*value*\]](http://www.w3school.com.cn/cssref/selector_attribute_value_start.asp) |      [lang\|=en]      |      选择 lang 属性值以 "en" 开头的所有元素。       |  2   |
| [:link](http://www.w3school.com.cn/cssref/selector_link.asp) |        a:link         |              选择所有未被访问的链接。               |  1   |
| [:visited](http://www.w3school.com.cn/cssref/selector_visited.asp) |       a:visited       |              选择所有已被访问的链接。               |  1   |
| [:active](http://www.w3school.com.cn/cssref/selector_active.asp) |       a:active        |                   选择活动链接。                    |  1   |
| [:hover](http://www.w3school.com.cn/cssref/selector_hover.asp) |        a:hover        |            选择鼠标指针位于其上的链接。             |  1   |
| [:focus](http://www.w3school.com.cn/cssref/selector_focus.asp) |      input:focus      |             选择获得焦点的 input 元素。             |  2   |
| [:first-letter](http://www.w3school.com.cn/cssref/selector_first-letter.asp) |    p:first-letter     |             选择每个 <p> 元素的首字母。             |  1   |
| [:first-line](http://www.w3school.com.cn/cssref/selector_first-line.asp) |     p:first-line      |              选择每个 <p> 元素的首行。              |  1   |
| [:first-child](http://www.w3school.com.cn/cssref/selector_first-child.asp) |     p:first-child     |    选择属于父元素的第一个子元素的每个 <p> 元素。    |  2   |
| [:before](http://www.w3school.com.cn/cssref/selector_before.asp) |       p:before        |         在每个 <p> 元素的内容之前插入内容。         |  2   |
| [:after](http://www.w3school.com.cn/cssref/selector_after.asp) |        p:after        |         在每个 <p> 元素的内容之后插入内容。         |  2   |
| [:lang(*language*)](http://www.w3school.com.cn/cssref/selector_lang.asp) |      p:lang(it)       | 选择带有以 "it" 开头的 lang 属性值的每个 <p> 元素。 |  2   |
| [*element1*~*element2*](http://www.w3school.com.cn/cssref/selector_gen_sibling.asp) |         p~ul          |        选择前面有 <p> 元素的每个 <ul> 元素。        |  3   |
| [[*attribute*^=*value*\]](http://www.w3school.com.cn/cssref/selector_attr_begin.asp) |    a[src^="https"]    |  选择其 src 属性值以 "https" 开头的每个 <a> 元素。  |  3   |
| [[*attribute*$=*value*\]](http://www.w3school.com.cn/cssref/selector_attr_end.asp) |    a[src$=".pdf"]     |   选择其 src 属性以 ".pdf" 结尾的所有 <a> 元素。    |  3   |
| [[*attribute**=*value*\]](http://www.w3school.com.cn/cssref/selector_attr_contain.asp) |     a[src*="abc"]     |  选择其 src 属性中包含 "abc" 子串的每个 <a> 元素。  |  3   |
| [:first-of-type](http://www.w3school.com.cn/cssref/selector_first-of-type.asp) |    p:first-of-type    |  选择属于其父元素的首个 <p> 元素的每个 <p> 元素。   |  3   |
| [:last-of-type](http://www.w3school.com.cn/cssref/selector_last-of-type.asp) |    p:last-of-type     |  选择属于其父元素的最后 <p> 元素的每个 <p> 元素。   |  3   |
| [:only-of-type](http://www.w3school.com.cn/cssref/selector_only-of-type.asp) |    p:only-of-type     |  选择属于其父元素唯一的 <p> 元素的每个 <p> 元素。   |  3   |
| [:only-child](http://www.w3school.com.cn/cssref/selector_only-child.asp) |     p:only-child      |    选择属于其父元素的唯一子元素的每个 <p> 元素。    |  3   |
| [:nth-child(*n*)](http://www.w3school.com.cn/cssref/selector_nth-child.asp) |    p:nth-child(2)     |   选择属于其父元素的第二个子元素的每个 <p> 元素。   |  3   |
| [:nth-last-child(*n*)](http://www.w3school.com.cn/cssref/selector_nth-last-child.asp) |  p:nth-last-child(2)  |          同上，从最后一个子元素开始计数。           |  3   |
| [:nth-of-type(*n*)](http://www.w3school.com.cn/cssref/selector_nth-of-type.asp) |   p:nth-of-type(2)    |  选择属于其父元素第二个 <p> 元素的每个 <p> 元素。   |  3   |
| [:nth-last-of-type(*n*)](http://www.w3school.com.cn/cssref/selector_nth-last-of-type.asp) | p:nth-last-of-type(2) |        同上，但是从最后一个子元素开始计数。         |  3   |
| [:last-child](http://www.w3school.com.cn/cssref/selector_last-child.asp) |     p:last-child      |    选择属于其父元素最后一个子元素每个 <p> 元素。    |  3   |
| [:root](http://www.w3school.com.cn/cssref/selector_root.asp) |         :root         |                 选择文档的根元素。                  |  3   |
| [:empty](http://www.w3school.com.cn/cssref/selector_empty.asp) |        p:empty        |   选择没有子元素的每个 <p> 元素（包括文本节点）。   |  3   |
| [:target](http://www.w3school.com.cn/cssref/selector_target.asp) |     #news:target      |             选择当前活动的 #news 元素。             |  3   |
| [:enabled](http://www.w3school.com.cn/cssref/selector_enabled.asp) |     input:enabled     |            选择每个启用的 <input> 元素。            |  3   |
| [:disabled](http://www.w3school.com.cn/cssref/selector_disabled.asp) |    input:disabled     |             选择每个禁用的 <input> 元素             |  3   |
| [:checked](http://www.w3school.com.cn/cssref/selector_checked.asp) |     input:checked     |           选择每个被选中的 <input> 元素。           |  3   |
| [:not(*selector*)](http://www.w3school.com.cn/cssref/selector_not.asp) |        :not(p)        |             选择非 <p> 元素的每个元素。             |  3   |
| [::selection](http://www.w3school.com.cn/cssref/selector_selection.asp) |      ::selection      |             选择被用户选取的元素部分。              |  3   |

#####  ============选择器优先级问题=======================

- 优先级：就近原则 / 具体性原则 / 重要性原则

## ==========css重要的样式============

#### 一、css盒子

![CSS box-model](http://www.runoob.com/images/box-model.gif)

#### 二、浮动

```
float:会使元素从左向右移动，不能从上到下，其周围的元素也会重新排列，直到它的外边框的边缘碰到另一个元素的外边框为止。
float：left；左浮动
float：right；右浮动

清除浮动
clear：both；


```

#### 三、定位

```
position制定了元素的定位的类型。
position的五个属性：
static：HTML元素的默认值，即没有定位，元素出现在正常的流中，静态定位的元素不会受到 top, bottom, left, right影响。

relative：relative 定位相对定位元素的定位是相对其正常位置。

fixed：元素的位置相对于浏览器窗口是固定位置。即使窗口是滚动的它也不会移动：

absolute：absolute 定位绝对定位的元素的位置相对于最近的已定位父元素，如果元素没有已定位的父元素，那么它的位置相对于<html>

```

#### 四、显示

```
display属性设置一个元素应如何显示，visibility属性指定一个元素应可见还是隐藏。

隐藏元素 - display:none或visibility:hidden

隐藏一个元素可以通过把display属性设置为"none"，或把visibility属性设置为"hidden"。但是请注意，这两种方法会产生不同的结果。

visibility:hidden可以隐藏某个元素，但隐藏的元素仍需占用与未隐藏之前一样的空间。也就是说，该元素虽然被隐藏了，但仍然会影响布局。
```

#### 五、对齐

```
元素居中对齐：
要水平居中对齐一个元素(如 <div>), 可以使用 margin: auto;。设置到元素的宽度将防止它溢出到容器的边缘。元素通过指定宽度，并将两边的空外边距平均分配

文本居中对齐：
如果仅仅是为了文本在元素内居中对齐，可以使用 text-align: center

图片居中对齐：
要让图片居中对齐, 可以使用 margin: auto; 并将它放到 块 元素中

左右对齐 - 使用定位方式：
我们可以使用 position: absolute; 属性来对齐元素

左右对齐 - 使用 float 方式：
我们也可以使用 float 属性来对齐元素

垂直居中对齐 - 使用 padding
CSS 中有很多方式可以实现垂直居中对齐。 一个简单的方式就是头部顶部使用 padding

垂直居中 - 使用 line-height 等于 元素的 height;

垂直居中 - 使用 position 和 transform:
除了使用 padding 和 line-height 属性外,我们还可以使用 transform 属性来设置垂直居中:
```



