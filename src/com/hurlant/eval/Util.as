package com.hurlant.eval
{
	public class Util
	{
	
	    public static function assert(cond):void {
	        if (!cond)
	            throw "Assertion failed!";
	    }
	
	    public static function map(fn, a):Array {
	        var b:Array = [];
	        for ( var i:int=0 ; i < a.length ; i++ )
	            if (i in a)
	                b[i] = fn(a[i]);
	        return b;
	    }
	
	    public static function forEach(fn, a):void {
	        for ( var i:int=0 ; i < a.length ; i++ )
	            if (i in a)
	                fn(a[i]);
	    }
	
	    public static function memberOf(x, ys):Boolean {
	        for ( var i:int=0 ; i < ys.length ; i++ ) {
	            if (ys[i] === x)
	                return true;
	        }
	        return false;
	    }
	
	    public static function copyArray(c):Array {
	        var a:Array = new Array;
	        for ( var i:int=0 ; i < c.length ; i++ )
	            a[i] = c[i];
	        return a;
	    }
	
	    public static function toUint(x):uint {
	        return uint(x);
	    }

	}
}