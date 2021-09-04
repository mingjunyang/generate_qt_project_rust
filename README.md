#README

简单的将rust项目创建为一个qtcreator项目，方便qt-creator编辑代码。

首先在qt-creator的language client中正确安装`rust analyzer`或者`rls`。
[1!](img/rust-analyzer.png)
[2!](img/rust-lsp.png)

然后执行脚本 `./qtcreator_rust_project_gen.sh ../RUST/rustls`
即可生成qt-qtcreator需要的工程文件。
到对应的rust项目文件夹中找到对应的 xxxx.creator，用qt-creator的打开项目方式打开即可。
然后就是愉快的在qt-creator中编写rust代码了。

生成项目主要的两个文件就是`"$project_name".creator`和`"$project_name".files`，
其他语言只要有`language server protocol`都可以用，还是很爽的。
具体的看这里： https://langserver.org/
