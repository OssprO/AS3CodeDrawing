package com.graphics{	import flash.display.Sprite;

	public class Cruz extends Sprite{		private var _lado:Number;		private var _grueso:Number;		private var _color:uint;				public function Cruz(lado:Number = 100, grueso:Number = 50, color:uint = 0xFFFFFF):void {			_lado = lado;			_grueso = grueso;			_color = color;						init();		}				public function init():void{			var p1:int = _lado/2-_grueso/2;			var p2:int = _lado/2-_grueso/2+grueso;			this.graphics.beginFill(_color,1);			this.graphics.moveTo(p1,0);			this.graphics.lineTo(p2,0);			this.graphics.lineTo(p2,p1);			this.graphics.lineTo(_lado,p1);			this.graphics.lineTo(_lado,p2);						this.graphics.lineTo(p2,p2);			this.graphics.lineTo(p2,_lado);			this.graphics.lineTo(p1,_lado);			this.graphics.lineTo(p1,p2);			this.graphics.lineTo(0,p2);			this.graphics.lineTo(0,p1);			this.graphics.lineTo(p1,p1);			this.graphics.endFill();	}		public function set lado(v_lado:Number):void		{			_lado = v_lado;		}		public function get lado():Number		{			return _lado;		}		public function set grueso(v_grueso:Number):void		{			_grueso = v_grueso;		}		public function get grueso():Number		{			return _grueso;		}		public function get color():uint
		{
			return _color;
		}		public function set color(value:uint):void
		{
			_color = value;
		}	}	}