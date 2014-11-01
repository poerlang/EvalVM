EvalVM
======

一个Javascript、AS3脚本编译器，在FlashPlayer运行时，执行eval操作，脚本与AS3通信，类和变量互通。

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
详见 example 目录
