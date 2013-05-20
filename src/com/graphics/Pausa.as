package com.graphics{
	
	import flash.display.Sprite;
	
	public class Pausa extends Sprite{
		private var _ancho:Number;
		private var _alto:Number;
		private var _color:uint;
		private var _alfa:Number;
		
		public function Pausa(ancho:Number=10, alto:Number=35, color:uint=0xFFFFFF, alfa:Number = 1):void{
			_ancho = ancho;
			_alto = alto;
			_color = color;
			_alfa = alfa;
			init();
		}
		private function init():void{
			this.graphics.clear();
			this.graphics.beginFill(_color,_alfa);
			this.graphics.drawRect(-_ancho/2,-_alto/2,_ancho*.35,_alto);
			this.graphics.drawRect(_ancho*.15,-_alto/2,_ancho*.35,_alto);
			this.graphics.endFill();
		}

		public function get ancho():Number
		{
			return _ancho;
		}

		public function set ancho(value:Number):void
		{
			_ancho = value;
			init();
		}

		public function get alto():Number
		{
			return _alto;
		}

		public function set alto(value:Number):void
		{
			_alto = value;
			init();
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

		public function get alfa():Number
		{
			return _alfa;
		}

		public function set alfa(value:Number):void
		{
			_alfa = value;
			init();
		}


	}
}