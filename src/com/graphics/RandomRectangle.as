package com.graphics
{
	import flash.display.Sprite;
	
	public class RandomRectangle extends Sprite
	{
		private var _ancho:Number;
		private var _alto:Number;
		private var _color_relleno:uint;
		private var _alpha_relleno:Number;
		private var _rango:Number;
		
		public function RandomRectangle(ancho:Number=100, alto:Number=100, color_relleno:uint=0xFFFFFF, alpha_relleno:Number=1, rango:Number=50)
		{
			super();
			_color_relleno = color_relleno;
			_alpha_relleno = alpha_relleno;
			_ancho = ancho;
			_alto = alto;
			_rango = rango;
			
			dibujar();
		}
		
		
		private function dibujar():void{
			this.graphics.clear();
			this.graphics.beginFill(_color_relleno, _alpha_relleno);
			this.graphics.moveTo(Math.random()*_rango, Math.random()*_rango);
			this.graphics.lineTo(masMenos(_ancho), Math.random()*_rango);
			this.graphics.lineTo(masMenos(_ancho), masMenos(_alto));
			this.graphics.lineTo(Math.random()*_rango, masMenos(_alto));
			this.graphics.endFill();
		}
		
		private function masMenos(valor:Number):Number{
			var masmenos:int;
			masmenos = Math.random()*1;
			var resultado:Number = new Number;
			
			if(masmenos < 1)
				resultado = valor + Math.random()*_rango;
			else
				resultado = valor - Math.random()*_rango;
			
			return resultado;
		}
		
		public function get color_relleno():uint{
			return _color_relleno;
		}
		
		public function set color_relleno(value:uint):void{
			_color_relleno = value;
		}
		
		public function get alpha_relleno():Number{
			return _alpha_relleno;
		}
		
		public function set alpha_relleno(value:Number):void{
			_alpha_relleno = value;
		}
		
		public function get ancho():Number{
			return _ancho;
		}
		
		public function set ancho(value:Number):void{
			_ancho = value;
		}
		
		public function get alto():Number{
			return _alto;
		}
		
		public function set alto(value:Number):void{
			_alto = value;
		}
	}
}