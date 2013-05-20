package com.graphics{
	import flash.display.GradientType;
	import flash.display.InterpolationMethod;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	public class Bola extends Sprite
	{
		private var _radio:Number;
		private var _color:Number;
		public var identificador:int;
		public var angulo:Number;
		
		private var _degradadoActivo:Boolean = false;
		
		private var _tipo:String;
		private var _colores:Array;
		private var _alphas:Array; 
		private var _posiciones:Array;
		
		public function Bola(radio:Number = 100, color:uint = 0xFFFFFF):void{
			_color = color;
			_radio = radio;
			
			init();
		}
		public function init():void{
			this.graphics.clear();
			this.graphics.beginFill(_color, 1);
			this.graphics.drawCircle(0,0,_radio);
			this.graphics.endFill();
		}
		
		public function degradado(tipo:String,colores:Array,alphas:Array,posiciones:Array):void
		{
			_tipo = tipo;
			_colores = colores;
			_alphas = alphas; 
			_posiciones = posiciones;
			_degradadoActivo = true;
			
			this.graphics.clear();
			var spreadMethod:String = SpreadMethod.PAD; 
			var interp:String = InterpolationMethod.LINEAR_RGB; 
			var focalPtRatio:Number = 0; 
			
			var matrix:Matrix = new Matrix(); 
			var boxWidth:Number = _radio*2;
			var boxHeight:Number = _radio*2;
			var boxRotation:Number = 0;//Math.PI/2; // 90° 
			var tx:Number = -_radio;
			var ty:Number = -_radio;
			matrix.createGradientBox(boxWidth, boxHeight, boxRotation, tx, ty);
			this.graphics.beginGradientFill(_tipo, _colores, _alphas, _posiciones, matrix, spreadMethod, interp, focalPtRatio);
			this.graphics.drawCircle(0,0,_radio);
			this.graphics.endFill();
		}
		
		public function get radio():Number{
			return _radio;
		}

		public function set radio(v_radio:Number):void{
			_radio = v_radio;
			if(_degradadoActivo)
				degradado(_tipo,_colores,_alphas,_posiciones);
			else
				init();
		}

		public function get color():Number
		{
			return _color;
		}

		public function set color(value:Number):void
		{
			_color = value;
			init();
		}


	}
}