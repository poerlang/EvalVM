EvalVM
======

源自
==
来源： http://eval.hurlant.com/ ，99.99的代码，我都没有动过，版权还是hurlant的，我只是去掉了一部分项目中可能不常用的类，另外加入一个回调函数（代码解析执行后的回调），这里相当于是一个镜像，如果你需要更进一步的信息，可以访问 http://eval.hurlant.com/ 或者google搜索。


一个基于 AS3 的 JavaScript 脚本编译解释器，FlashPlayer运行时执行eval操作，脚本与AS3类、变量互通。
输入的其实是 ecmascript 4 类型的脚本，输出的是二进制的编译文件。
效率是原生的1/20左右，不过用来做游戏的脚本系统，足够了。
虽然lua的效率接近原生（CrossBridge版本），但是，如果你和我一样喜欢 AS或JS的语法，可以考虑用这个 EvalVM。


使用方法
==
<pre>
var vm:CompiledESC = new CompiledESC(vmReady);
function vmReady():void{
	var b:ByteArray = vm.eval("var a=1;");
	ByteLoader.loadBytes(b,end,true);
}
function end():void{
	trace("end");
}
</pre>
具体用法，详见 example 目录。
