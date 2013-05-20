package com.graphics{
	
	import flash.display.Sprite;
	
	public class MayorMenorSymbol extends Sprite{
		
		private var _color:uint;
		private var _lado:Number;
		
		
		public function MayorMenorSymbol(color:uint=0xFFFFFF, lado:Number=100):void{
			super();
			_color = color;
			_lado = lado;
			
			init();
		}
		
		private function init():void{
			this.graphics.clear();
			this.graphics.lineStyle(1,_color,1);
			this.graphics.moveTo(0, _lado/5 * 2);
			this.graphics.lineTo(_lado/2,0);
			this.graphics.lineTo(_lado,_lado/5 * 2);
		}

		public function get color():uint
		{
			return _color;
		}

		public function set color(value:uint):void
		{
			_color = value;
			init();
		}

		public function get lado():Number
		{
			return _lado;
		}

		public function set lado(value:Number):void
		{
			_lado = value;
			init();
		}
		
	}
}