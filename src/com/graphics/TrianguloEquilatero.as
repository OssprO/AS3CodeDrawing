package com.graphics
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Shape;
	import flash.display.Sprite;
	
	import com.maths.geometrica;
	
	public class TrianguloEquilatero extends Sprite
	{
		private var _color:uint;
		private var _lado:Number;
		
		private var _altura:Number;
		
		public function TrianguloEquilatero(lado:Number=100, color:uint=0xFFFFFF)
		{
			super();
			
			_color = color;
			_lado = lado;
			
			init();
		}
		
		private function init():void{
			_altura = new Number(geometrica.htrianguloeq(_lado));
			this.graphics.clear();
			this.graphics.beginFill(_color,1);
			this.graphics.moveTo(0,_altura);
			this.graphics.lineTo(_lado,_altura);
			this.graphics.lineTo(_lado/2,0);
			this.graphics.endFill();
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
