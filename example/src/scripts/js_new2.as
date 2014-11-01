namespace flash_utils = "flash.utils";
use namespace flash_utils;
import flash.utils.getTimer;
dynamic class ArrayX extends Array{
	function ArrayX(){
		this.push("World!");
		this.unshift("Hello");
		this.push(" I'm ArrayX");
		this.push(getTimer());
		G.print(this.join(", "));
	}
	var ver:Number = 3.1415929;
}
G.arr = new ArrayX();
G.print(G.arr.ver);