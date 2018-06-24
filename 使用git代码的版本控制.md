# 使用git代码的版本控制

### * 发展历程

```
版本控制系统软件：
90年的产品：
cvs：锁定模式
vss：锁定模式，一个人在一个时间点只能操作这个文件。

2000年的产品（网络和服务器是必须的）：
Subversion -SVN:合并模式，大家都可以操作同一个文件，在提交时如果两个人的操作部分是一样的，那么在提交时就会发生冲突，然后两个人再去协商.
集中控制式的版本系统

2005年的产品：
git：分布式的版本控制系统（不需要服务器的存在），没有网络也能实现版本控制
```



### 一、 建立版本仓库

```
打开cmd命令行
* git init --进行仓库初始化
```

### 二、把本地文件加入到栈存

```
git add  文件名 -----现在只是把文件放到栈存，没有加入到本地仓库
```

### 三、把文件加入到本地版本控制

```
git commit -m '注释说明'
```

### 四、在本地仓库对文件的操作

```
* 修改文件
windows环境下：notepad 文件名-----修改/编辑文件
linux环境下：vim 文件名 --------修稿/编辑文件
* 查看文件的状态
git status
* 查看修改文件的日志
git log
* 查看所有文件修改的历史版本
git reflog
* 美化GUI查看日志：
git log  --graph --pretty=oneline  --abbrev-commit
* 把栈存区的内容进行撤离
git checkout -- hard 文件名-----然后打开文件，把错误的内容删除保存，在进行提交
* 回到历史版本
git reset --hard HEAD^/后边的版本代号
* 建立新的分支
git bransh cool-function
* 把新的分支合并到master
git merge cool-function
```

### 五、把本地代码同步到网络

```
* 把本地代码加到网络上的仓库
git remote add origin (https://github.com/Zbingyang/The-front-page.git)url
* 把本地代码同步到网络
git push -u origin master
```

### 六、把网络上的代码同步到本地

```
git pull
```

### 七、建立分支并进行分支的合并

```
在git有一个默认的主干master,这是最终的程序代码,所有我们不能再这个主干上去进行一些文件的编码操作,我们需要去建立一个分支branch来进行文件的编码,最终把分支的代码合并到master这个主干上。
1 创建分支
git branch 分支名
2 切换分支--------------------git checkout -b 分支名 创建分支并进入到分支
git checkout 分支名
3 进行创建文件和编写代码的操作
windows：
1 创建文件：md 文件名
2 编辑文件：notepad 文件名
linux:
1 创建文件：touch 文件
2 编辑文件：echo 文本 < 文件  /vim 文件
4 把分支的文件加入到栈存
git add .
5 把分支拉入到版本控制
git commit -m 'reason'
6 把分支和master进行合并
合并分支：git merge --no-ff 分支名 -m  “reason” 合并并保留之前分支的相关的信息
	     git merge 分支名  合并不保留分支相关的信息
7 在加入到栈存
git add .
8 提交
git commit -m "reason"
9 同步到服务器 
//第一次同步
git remute add origin url（http://
git push -u master
//第二次同步
git push -u master
```

### 八、把服务器的代码拉倒本地版本控制

```
1 把服务器的代码拉入到本地的版本控制
git clone url(htpps://)
2 就可以进行操作
```

