package com.graphics
{
	import flash.display.GradientType;
	import flash.display.InterpolationMethod;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	public class FracRoundRect extends Sprite
	{
		private var _alto:Number;
		private var _ancho:Number;
		private var _curva_a:int;
		private var _curva_b:int;
		private var _curva_c:int;
		private var _curva_d:int;
		
		private var _color:uint;
		
		private var _tipo:String;
		private var _colores:Array;
		private var _alphas:Array; 
		private var _posiciones:Array;
		
		private var _degradado_activo:Boolean = false;
		
		public function FracRoundRect(alto:Number,ancho:Number,curva_a:int=10,curva_b:int=10,curva_c:int=10,curva_d:int=10,color:uint=0xFFFFFF)
		{
			super();
			
			_alto = alto;
			_ancho = ancho;
			_curva_a = curva_a;
			_curva_b = curva_b;
			_curva_c = curva_c;
			_curva_d = curva_d;
			_color = color;
			
			init();
		}
		
		public function init():void{
			this.graphics.clear();
			this.graphics.beginFill(_color,1);
			this.graphics.moveTo(0,_curva_a);
			this.graphics.curveTo(0,0,_curva_a,0);
			this.graphics.lineTo(_ancho-_curva_b,0);
			this.graphics.curveTo(_ancho,0,_ancho,_curva_b);
			this.graphics.lineTo(_ancho,_alto-_curva_c);
			this.graphics.curveTo(_ancho,_alto,_ancho-_curva_c,_alto);
			this.graphics.lineTo(_curva_d,_alto);
			this.graphics.curveTo(0,_alto,0,_alto-_curva_d);
			this.graphics.endFill();
		}
		
		public function degradado(tipo:String, colores:Array, alphas:Array, posiciones:Array):void{
			_tipo = tipo;
			_colores = colores;
			_alphas = alphas; 
			_posiciones = posiciones;
			_degradado_activo = true;
			
			this.graphics.clear();
			var spreadMethod:String = SpreadMethod.PAD;
			var interp:String = InterpolationMethod.LINEAR_RGB; 
			var focalPtRatio:Number = 0; 
			
			var matrix:Matrix = new Matrix(); 
			var boxWidth:Number = _ancho;
			var boxHeight:Number = _alto;
			var boxRotation:Number = Math.PI/2; // 90° 
			var tx:Number = 0;
			var ty:Number = 0;
			matrix.createGradientBox(boxWidth, boxHeight, boxRotation, tx, ty);
			this.graphics.beginGradientFill(_tipo, _colores, _alphas, _posiciones, matrix, spreadMethod, interp, focalPtRatio);
			this.graphics.moveTo(0,_curva_a);
			this.graphics.curveTo(0,0,_curva_a,0);
			this.graphics.lineTo(_ancho-_curva_b,0);
			this.graphics.curveTo(_ancho,0,_ancho,_curva_b);
			this.graphics.lineTo(_ancho,_alto-_curva_c);
			this.graphics.curveTo(_ancho,_alto,_ancho-_curva_c,_alto);
			this.graphics.lineTo(_curva_d,_alto);
			this.graphics.curveTo(0,_alto,0,_alto-_curva_d);
			this.graphics.endFill();
		}
		
		
		public function set alto(v_alto:Number):void{
			_alto = v_alto;
			if(_degradado_activo)
				degradado(_tipo, _colores, _alphas, _posiciones);
			else
				init();
		}
		public function get alto():Number{
			return _alto;
		}
		public function set ancho(v_ancho:Number):void{
			_ancho = v_ancho;
			if(_degradado_activo)
				degradado(_tipo, _colores, _alphas, _posiciones);
			else
				init();
		}
		public function get ancho():Number{
			return _ancho;
		}
		public function set curva_a(v_curva_a:int):void{
			_curva_a = v_curva_a;
			if(_degradado_activo)
				degradado(_tipo, _colores, _alphas, _posiciones);
			else
				init();
		}
		public function get curva_a():int{
			return _curva_a;
		}
		public function set curva_b(v_curva_b:int):void{
			_curva_b = v_curva_b;
			if(_degradado_activo)
				degradado(_tipo, _colores, _alphas, _posiciones);
			else
				init();
		}
		public function get curva_b():int{
			return _curva_b;
		}
		public function set curva_c(v_curva_c:int):void{
			_curva_c = v_curva_c;
			if(_degradado_activo)
				degradado(_tipo, _colores, _alphas, _posiciones);
			else
				init();
		}
		public function get curva_c():int{
			return _curva_c;
		}
		public function set curva_d(v_curva_d:int):void{
			_curva_d = v_curva_d;
			if(_degradado_activo)
				degradado(_tipo, _colores, _alphas, _posiciones);
			else
				init();
		}
		public function get curva_d():int{
			return _curva_d;
		}

		public function get color():uint
		{
			return _color;
		}

		public function set color(value:uint):void
		{
			_color = value;
			if(_degradado_activo)
				degradado(_tipo, _colores, _alphas, _posiciones);
			else
				init();
		}

	}
}
