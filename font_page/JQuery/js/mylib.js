// 用cache对象缓存已经获得过的元素
// 元素的id是key, 元素对象是对应的value
// 缓存: 牺牲空间换取时间的策略
var cache = {};

function $(id) {
	if (!cache[id]) {
		cache[id] = document.getElementById(id);
	}
	return cache[id];
}

function getStyle(elem) {
	return window.getComputedStyle ? 
		window.getComputedStyle(elem) : elem.currentStyle;
}


function bind(elem,en,fn){
	if(elem.addEventListener){
		elem.addEventListener(en,fn);
	}
	else{
		elem.attachEvent('on' + en, fn);
	}
}

function handleEvent(){
	evt = evt || event;
	evt.preventDefault = evt.preventDefault ||
	function(){
		this.returnValue = false;
	}
	evt.preventDefault = evt.preventDefault ||
	function(){
		this.cancelable = true;
	}
	return evt;
}

//bind(参数1；绑定的元素；元素2：绑定的事件；元素3：函数)绑定函数；












