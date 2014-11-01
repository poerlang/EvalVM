package
{
	public dynamic class G
	{
		public static var a:AClass;
		public static var class_from_js:Class;
		public function G(){}
		public static function print(...p):void {
			trace.apply(null,p);
		}
	}
}