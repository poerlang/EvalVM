EvalVM
======

一个基于 AS3 的 JavaScript 脚本编译解释器，FlashPlayer运行时执行eval操作，脚本与AS3类、变量互通。
输入的其实是 ecmascript 4 类型的脚本，输出的是二进制的编译文件。
效率是原生的1/20左右，不过用来做游戏的脚本系统，足够了。
虽然lua的效率接近原生（CrossBridge版本），但是，如果你和我一样喜欢 AS或JS的语法，可以考虑用这个 EvalVM。

源自
==
修改自 http://eval.hurlant.com/ ，去掉了一部分不常用的类，加入回调函数。

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
